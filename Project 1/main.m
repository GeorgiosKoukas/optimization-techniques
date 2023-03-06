clear ; clc;
syms f1(x);
syms f2(x);
syms f3(x);

f1(x) = (x-2).^2 + x*log(x+3);
f2(x) = 5.^x + (3-cos(x)).^2;
f3(x) = exp(x)*(x.^3-1)+(x-1)*sin(x);

%First Exercise
plotterA(10,f1, "f_{1}(x)");
plotterA(10,f2, "f_{2}(x)");
plotterA(10,f3, "f_{3}(x)");


%Second Exercise
plotterB(100,f1, "f_{1}(x)");
plotterB(100,f2, "f_{2}(x)");
plotterB(100,f3, "f_{3}(x)");


%Third Exercise
plotterC(100,f1, "f_{1}(x)");
plotterC(100,f2, "f_{2}(x)");
plotterC(100,f3, "f_{3}(x)");


%Fourth Exercise

plotterD(100,f1, "f_{1}(x)");
plotterD(100,f2, "f_{2}(x)");
plotterD(100,f3, "f_{3}(x)");

FolderName = 'C:\Users\Koukas\Desktop\Τεχνικές Βελτιστοποίησης\Project 1\plots';   % Your destination folder
FigList = findobj(allchild(0), 'flat', 'Type', 'figure');
for iFig = 1:length(FigList)
  FigHandle = FigList(iFig);
  FigName   = ['Fig' num2str(iFig)];
  savefig(FigHandle, fullfile(FolderName, [FigName '.fig']));
  saveas(FigHandle, fullfile(FolderName,  [FigName '.png']));
end