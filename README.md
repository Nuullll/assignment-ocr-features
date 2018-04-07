# assignment-ocr-features

See [report file](report/report.pdf).

## Environment (tested)

```text
MATLAB Version: 9.1.0.441655 (R2016b)
MATLAB License: 1114839
Operating System: Mac OS X  Version: 10.13.4 Build: 17E199 
Java Version: Java 1.7.0_75-b13 with Oracle Corporation Java HotSpot(TM) 64-Bit Server VM mixed mode
```

## Usage

Execute [run.m](src/run.m) directly.

* If you want to use different feature extractors, please modify the function handle list `extractor_list` in [run.m](src/run.m):

```matlab
extractor_list = {
    @noresize_blockwise_counter;
    @noresize_blockwise_white_counter;
    @hog;
};
```

* All feature extractor functions are save under [src/extractors/](src/extractors/).
