function [clicks, props] = getShockClicks(lf, rf, lr, rr)

% LF
idxUnder = strfind(lf, '_');
idxDash = strfind(lf, '-');
idxDot = strfind(lf, '.');

lf_lsc = str2double(lf(idxDot(1)+1:idxDash(1)-1));% LF
lf_hsc = str2double(lf(idxDash(1)+1:idxDash(2)-1));
lf_lsr = str2double(lf(idxDot(2)+1:idxDash(end)-1));
lf_hsr = str2double(lf(idxDash(end)+1:end));

lf_compValve = lf(1:idxDot(1)-1);
lf_blowoff = str2double(lf(idxDash(2)+1:idxUnder(1)-1));
lf_rebValve = lf(idxUnder(1)+1:idxDot(end)-1);

lf_compSpring = lf_compValve(end-1:end);
lf_compValve = lf_compValve(1:3);

lf_rebSpring = lf_rebValve(end-1:end);
lf_rebValve = lf_rebValve(1:3);

% rf
idxUnder = strfind(rf, '_');
idxDash = strfind(rf, '-');
idxDot = strfind(rf, '.');

rf_lsc = str2double(rf(idxDot(1)+1:idxDash(1)-1));
rf_hsc = str2double(rf(idxDash(1)+1:idxDash(2)-1));
rf_lsr = str2double(rf(idxDot(2)+1:idxDash(end)-1));
rf_hsr = str2double(rf(idxDash(end)+1:end));

rf_compValve = rf(1:idxDot(1)-1);
rf_blowoff = str2double(rf(idxDash(2)+1:idxUnder(1)-1));
rf_rebValve = rf(idxUnder(1)+1:idxDot(end)-1);

rf_compSpring = rf_compValve(end-1:end);
rf_compValve = rf_compValve(1:3);

rf_rebSpring = rf_rebValve(end-1:end);
rf_rebValve = rf_rebValve(1:3);

% lr
idxUnder = strfind(lr, '_');
idxDash = strfind(lr, '-');
idxDot = strfind(lr, '.');

lr_lsc = str2double(lr(idxDot(1)+1:idxDash(1)-1));
lr_hsc = str2double(lr(idxDash(1)+1:idxDash(2)-1));
lr_lsr = str2double(lr(idxDot(2)+1:idxDash(end)-1));
lr_hsr = str2double(lr(idxDash(end)+1:end));

lr_compValve = lr(1:idxDot(1)-1);
lr_blowoff = str2double(lr(idxDash(2)+1:idxUnder(1)-1));
lr_rebValve = lr(idxUnder(1)+1:idxDot(end)-1);

lr_compSpring = lr_compValve(end-1:end);
lr_compValve = lr_compValve(1:3);

lr_rebSpring = lr_rebValve(end-1:end);
lr_rebValve = lr_rebValve(1:3);

% rr
idxUnder = strfind(rr, '_');
idxDash = strfind(rr, '-');
idxDot = strfind(rr, '.');

rr_lsc = str2double(rr(idxDot(1)+1:idxDash(1)-1));
rr_hsc = str2double(rr(idxDash(1)+1:idxDash(2)-1));
rr_lsr = str2double(rr(idxDot(2)+1:idxDash(end)-1));
rr_hsr = str2double(rr(idxDash(end)+1:end));

rr_compValve = rr(1:idxDot(1)-1);
rr_blowoff = str2double(rr(idxDash(2)+1:idxUnder(1)-1));
rr_rebValve = rr(idxUnder(1)+1:idxDot(end)-1);

rr_compSpring = rr_compValve(end-1:end);
rr_compValve = rr_compValve(1:3);

rr_rebSpring = rr_rebValve(end-1:end);
rr_rebValve = rr_rebValve(1:3);

lf_clicks = [lf_lsc, lf_hsc, lf_lsr, lf_hsr];
rf_clicks = [rf_lsc, rf_hsc, rf_lsr, rf_hsr];
lr_clicks = [lr_lsc, lr_hsc, lr_lsr, lr_hsr];
rr_clicks = [rr_lsc, rr_hsc, rr_lsr, rr_hsr];

lf_prop = [{lf_compValve}, {lf_compSpring}, {lf_rebValve}, {lf_rebSpring}, {lf_blowoff}];
rf_prop = [{rf_compValve}, {rf_compSpring}, {rf_rebValve}, {rf_rebSpring}, {rf_blowoff}];
lr_prop = [{lr_compValve}, {lr_compSpring}, {lr_rebValve}, {lr_rebSpring}, {lr_blowoff}];
rr_prop = [{rr_compValve}, {rr_compSpring}, {rr_rebValve}, {rr_rebSpring}, {rr_blowoff}];


clicks = [{lf_clicks}, {rf_clicks}, {lr_clicks}, {rr_clicks}];

props = [{lf_prop}, {rf_prop}, {lr_prop}, {rr_prop}];


end