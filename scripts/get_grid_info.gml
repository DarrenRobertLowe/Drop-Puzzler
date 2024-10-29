/// get_grid_info();

grid        = (global.grid);
cellWidth   = global.cellWidth;
cellHeight  = global.cellHeight;

gridHeight  = ds_grid_height(grid);
gridWidth   = ds_grid_width(grid);

gridStartX  = global.gridStartX;
gridEndX    = (global.gridStartX + (gridWidth * cellWidth) );

gridStartY  = global.gridStartY;
gridEndY    = ( (gridHeight*cellHeight) + gridStartY);

lastRow     = (gridHeight - 1);
lastColumn  = (gridWidth  - 1);

gridPixelWidth  = (gridEndX-gridStartX);
gridPixelHeight = (gridEndY-gridStartY);
