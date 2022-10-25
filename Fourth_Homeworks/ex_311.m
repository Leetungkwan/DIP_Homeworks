f = imread('Fig0318(a)(ckt-board-orig).tif');
subplot(221);
imshow(f);

fn = imnoise(f, 'salt & pepper', 0.2);
subplot(222);
imshow(fn);

gm = medfilt2(fn);
subplot(223);
imshow(gm);

gms = medfilt2(fn, 'symmetric');
subplot(224);
imshow(gms);

