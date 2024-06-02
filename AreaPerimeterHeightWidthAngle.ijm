macro "Measure Object Area, perimeter, height, width, Angle, Length" {
run("8-bit");
run("Auto Threshold", "method=Default");
    // Set measurement parameters
    setOption("BlackBackground", false);
    setOption("Area", true);
    setOption("Perimeter", true);
    // Run measurements
    run("Set Measurements...", "area perimeter fit bounding display add redirect=None decimal=2");
    run("Analyze Particles...", "size=2-Infinity display clear add");
    run("Close");
    saveAs("Results.csv");
}
