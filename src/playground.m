TRAIN_DIR = '../train/';
TEST_DIR = '../TEST/';

D = dir([TRAIN_DIR, '*.bmp']);
images = {D.name};

for i = 1:length(images)
    
    name = images{i};
    
    img = imread([TRAIN_DIR, 'binarized/', name]);
    
    extract_feature(img);
    
end