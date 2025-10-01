function damperIds = getDamperIDs(damperData, nr)

damper_CHSV = damperData(:,contains(damperData(1,:),'Compression High Spd Valve'));
damper_CHSS = damperData(:,contains(damperData(1,:),'Compression High Spd Spring'));
damper_CLSC = damperData(:,contains(damperData(1,:),'Compression Low Spd Clicks'));
damper_CHSC = damperData(:,contains(damperData(1,:),'Compression High Spd Clicks'));
damper_CBOC = damperData(:,contains(damperData(1,:),'Compression Blowoff Clicks'));

damper_RHSV = damperData(:,contains(damperData(1,:),'Rebound High Spd Valve'));
damper_RHSS = damperData(:,contains(damperData(1,:),'Rebound High Spd Spring'));
damper_RLSC = damperData(:,contains(damperData(1,:),'Rebound Low Spd Clicks'));
damper_RHSC = damperData(:,contains(damperData(1,:),'Rebound High Spd Clicks'));

for r = 2:nr
    lf{r,1} = strcat(damper_CHSV{r,1},damper_CHSS{r,1},'.',damper_CLSC{r,1},'-',damper_CHSC{r,1},'-',damper_CBOC{r,1},'_',damper_RHSV{r,1},damper_RHSS{r,1},'.',damper_RLSC{r,1},'-',damper_RHSC{r,1});

    lr{r,1} = strcat(damper_CHSV{r,2},damper_CHSS{r,2},'.',damper_CLSC{r,2},'-',damper_CHSC{r,2},'-',damper_CBOC{r,2},'_',damper_RHSV{r,2},damper_RHSS{r,2},'.',damper_RLSC{r,2},'-',damper_RHSC{r,2});

    rf{r,1} = strcat(damper_CHSV{r,3},damper_CHSS{r,3},'.',damper_CLSC{r,3},'-',damper_CHSC{r,3},'-',damper_CBOC{r,3},'_',damper_RHSV{r,3},damper_RHSS{r,3},'.',damper_RLSC{r,3},'-',damper_RHSC{r,3});

    rr{r,1} = strcat(damper_CHSV{r,4},damper_CHSS{r,4},'.',damper_CLSC{r,4},'-',damper_CHSC{r,4},'-',damper_CBOC{r,4},'_',damper_RHSV{r,4},damper_RHSS{r,4},'.',damper_RLSC{r,4},'-',damper_RHSC{r,4});

end
damperHeader = [{'LFDamper'},{'RFDamper'},{'LRDamper'},{'RRDamper'}];
damperIds = [damperHeader;lf,rf,lr,rr];
damperIds(2,:) = [];

end