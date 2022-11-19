%PRACTICE 3. Team 3
%Rodrigo de Lera 100452323
%Blanca González 100454722
%Elena de Toledo 100452170


clear;
clc;

%Import the data into 5 matrices, one for each country
data = load("population.mat");

%Data for Moldova (1)
for i=1:1:70
    dataMatrix{1,i} = data.lifeexp{109,i};
end

%Data for Afghanistan (2)
for i=1:1:70
    dataMatrix{2,i} = data.lifeexp{2,i};
end

%Data for Burundi (3)
for i=1:1:70
   dataMatrix{3,i} = data.lifeexp{28,i};
end

%Data for Haiti (4)
for i=1:1:70
    dataMatrix{4,i} = data.lifeexp{72,i};
end

%Data for Kiribati (5)
for i=1:1:70
    dataMatrix{5,i} = data.lifeexp{88,i};
end

disp("Wait until all calculations are performed")
%Tiled layout to see all the graphs in the same page
t= tiledlayout(2,3);
nexttile;
title(t,'Life Expectancy'); %Variable we chose to study
country1=splineFunction(dataMatrix,1);
disp("Plotting Moldova...")
for (i=1:7)
    syms f(x) %Plot for each decade years 0-3
	f(x) =country1(1,i);
	x=linspace(10*(i-1),10*(i-1)+3);
	plot(x,f(x),'g');
    hold on
    for m = 10*(i-1):3:10*(i-1)+3
        plot(m,f(m),'*k');%Plotting the nodes
        hold on
    end 
    hold on
    syms f(x) %Plot for each decade years 3-6
	f(x) =country1(2,i);
	x=linspace(10*(i-1)+3,10*(i-1)+6);
	plot(x,f(x),'b');
    for m = 10*(i-1)+3:3:10*(i-1)+6
        plot(m,f(m),'*k');%Plotting the nodes
        hold on
    end 
    title('Moldova');
    hold on
    syms f(x) %Plot for each decade years 6-9
	f(x) =country1(3,i);
	x=linspace(10*(i-1)+6,10*(i-1)+9);
	plot(x,f(x),'m');
    for m = 10*(i-1)+6:3:10*(i-1)+9
        plot(m,f(m),'*k'); %Plotting the nodes
        hold on
    end 
    hold on
end

%Plot also real data
for (i = 0:69)
   syms g(x)
   g(x) = dataMatrix{1,i+1};
   x=linspace(i,i+0.1);
   plot(x,g(x),'.--c')
   hold on
    sii
end
set(gca,'XTickLabel',[1950 1960 1970 1980 1990 2000 2010 2020])
hold off

nexttile;

country2=splineFunction(dataMatrix,2);
disp("Plotting Afghanistan...")
for (i=1:7)
    syms f(x)
	f(x) =country2(1,i);
	x=linspace(10*(i-1),10*(i-1)+3);
	plot(x,f(x),'g')
    hold on
    for m = 10*(i-1):3:10*(i-1)+3
        plot(m,f(m),'*k')
        hold on
    end 
    hold on
    syms f(x)
	f(x) =country2(2,i);
	x=linspace(10*(i-1)+3,10*(i-1)+6);
	plot(x,f(x),'b')
    for m = 10*(i-1)+3:3:10*(i-1)+6
        plot(m,f(m),'*k')
        hold on
    end 
    title('Afghanistan');
    hold on
    syms f(x)
	f(x) =country2(3,i);
	x=linspace(10*(i-1)+6,10*(i-1)+9);
	plot(x,f(x),'m')
    for m = 10*(i-1)+6:3:10*(i-1)+9
        plot(m,f(m),'*k')
        hold on
    end 
    hold on
end
%Plot also real data
for (i = 0:69)
   syms g(x)
   g(x) = dataMatrix{2,i+1};
   x=linspace(i,i+0.1);
   plot(x,g(x),'.--c')
   hold on
    
end
set(gca,'XTickLabel',[1950 1960 1970 1980 1990 2000 2010 2020])
hold off

nexttile;

country3=splineFunction(dataMatrix,3);
disp("Plotting Burundi...")
for (i=1:7)
    syms f(x)
	f(x) =country3(1,i);
	x=linspace(10*(i-1),10*(i-1)+3);
	plot(x,f(x),'g')
    hold on
    for m = 10*(i-1):3:10*(i-1)+3
        plot(m,f(m),'*k')
        hold on
    end 
    hold on
    syms f(x)
	f(x) =country3(2,i);
	x=linspace(10*(i-1)+3,10*(i-1)+6);
	plot(x,f(x),'b')
    for m = 10*(i-1)+3:3:10*(i-1)+6
        plot(m,f(m),'*k')
        hold on
    end 
    title('Burundi');
    hold on
    syms f(x)
	f(x) =country3(3,i);
	x=linspace(10*(i-1)+6,10*(i-1)+9);
	plot(x,f(x),'m')
    for m = 10*(i-1)+6:3:10*(i-1)+9
        plot(m,f(m),'*k')
        hold on
    end 
    hold on
end
%Plot also real data
for (i = 0:69)
   syms g(x)
   g(x) = dataMatrix{3,i+1};
   x=linspace(i,i+0.1);
   plot(x,g(x),'.--c')
   hold on
    
end
set(gca,'XTickLabel',[1950 1960 1970 1980 1990 2000 2010 2020])
hold off

nexttile;

country4=splineFunction(dataMatrix,4);
disp("Plotting Haiti...")
for (i=1:7)
    syms f(x)
	f(x) =country4(1,i);
	x=linspace(10*(i-1),10*(i-1)+3);
	plot(x,f(x),'g')
    hold on
    for m = 10*(i-1):3:10*(i-1)+3
        plot(m,f(m),'*k')
        hold on
    end 
    hold on
    syms f(x)
	f(x) =country4(2,i);
	x=linspace(10*(i-1)+3,10*(i-1)+6);
	plot(x,f(x),'b')
    for m = 10*(i-1)+3:3:10*(i-1)+6
        plot(m,f(m),'*k')
        hold on
    end 
    title('Haiti');
    hold on
    syms f(x)
	f(x) =country4(3,i);
	x=linspace(10*(i-1)+6,10*(i-1)+9);
	plot(x,f(x),'m')
    for m = 10*(i-1)+6:3:10*(i-1)+9
        plot(m,f(m),'*k')
        hold on
    end 
    hold on
end
%Plot also real data
for (i = 0:69)
   syms g(x)
   g(x) = dataMatrix{4,i+1};
   x=linspace(i,i+0.1);
   plot(x,g(x),'.--c')
   hold on
    
end
set(gca,'XTickLabel',[1950 1960 1970 1980 1990 2000 2010 2020])
hold off

nexttile;
country5=splineFunction(dataMatrix,5);
disp("Plotting Kiribati...")
for (i=1:7)
    syms f(x)
	f(x) =country5(1,i);
	x=linspace(10*(i-1),10*(i-1)+3);
	plot(x,f(x),'g')
    hold on
    for m = 10*(i-1):3:10*(i-1)+3
        plot(m,f(m),'*k')
        hold on
    end 
    hold on
    syms f(x)
	f(x) =country5(2,i);
	x=linspace(10*(i-1)+3,10*(i-1)+6);
	plot(x,f(x),'b')
    for m = 10*(i-1)+3:3:10*(i-1)+6
        plot(m,f(m),'*k')
        hold on
    end 
    title('Kiribati');
    hold on
    syms f(x)
	f(x) =country5(3,i);
	x=linspace(10*(i-1)+6,10*(i-1)+9);
	plot(x,f(x),'m')
    for m = 10*(i-1)+6:3:10*(i-1)+9
        plot(m,f(m),'*k')
        hold on
    end 
    hold on
end
%Plot also real data
for (i = 0:69)
   syms g(x)
   g(x) = dataMatrix{5,i+1};
   x=linspace(i,i+0.1);
   plot(x,g(x),'.--c')
   hold on
    
end
set(gca,'XTickLabel',[1950 1960 1970 1980 1990 2000 2010 2020])
hold off

disp('Plot legend: In cian, you can see the actual data from the matrix. With a black * we have represented the nodes.');
disp('The splines are the lines in blue, green and magenta. Each color represents years ending in 0(1,2)3(4,5)6(7,8)9');

disp("Creating tables...");
disp(" ");

tableMoldova=tableCreator(1,country1,dataMatrix);
disp("Moldova table of errors")
disp(" ");
disp(tableMoldova);

tableAfghanistan=tableCreator(2,country2,dataMatrix);
disp("Afghanistan table of errors")
disp(" ");
disp(tableAfghanistan);

tableBurundi=tableCreator(3,country3,dataMatrix);
disp("Burundi table of errors")
disp(" ");
disp(tableBurundi);

tableHaiti=tableCreator(4,country4,dataMatrix);
disp("Haiti table of errors")
disp(" ");
disp(tableHaiti);

tableKiribati=tableCreator(5,country5,dataMatrix);
disp("Kiribati table of errors")
disp(" ");
disp(tableKiribati);

disp(' --- ANSWER TO QUESTION 2----');
fprintf('Moldova: The most significant error takes place in 1985. The absolute error is of 1.1664 . The only thing we could find that happened near this date in Moldova is\n that towards the end of the 80s Moldova started its process of independence from the URSS.\nIt is not clear for us if this may have reduced life expectancy or if this decrease is related to bad measurements of data during this time\n ');
fprintf('Afganistan: As seen on the table, the greatest errors happen around the year 1994 (46 years after 1950). The reason why life expectancy decreased in those years may have been related to the emergence of the talibans.\n Their origin is placed in 1990, but it was not until 1996 that they conquered Kabul, the capital of Afganistan.\n');
fprintf('Burundi: In this country, we have found two significant errors between the interpolation and the actual data. The first error, which happens for the year 1972, that is 22 years after 1950, is of 27.201.\n It is a huge error since it means that the life expectancy decreased from 45 to 18 in a single year. The data shows us that this is incidental, and that the next year the values are regulated again.\n');
fprintf('The explanation for this phenomenon is that in 1972 it took place the genocide of Burundi. It was a series of mass killings that were iniciated by the Tutsi-dominanted army against the elite Hutus who libed in the country. It is estimated that between 100,000 and 150,000 people were killed. Later, in 1994, it is evident another sudden decrease of life expectancy.\n It is related with the Burundi Civil War, that developed between the years 1993 and 2005.\n');
fprintf('Haiti: the significant error in this graph is induced by the punctual decrease in life expectancy in 2010. That year a disastrous earthquake devastated Haiti, which resulted in over 316.000 deaths and more than 1.5 million people lost their homes.\n Apart from that, we should take into account that Haiti is the most underdeveloped country in America, so this destructive incident perpetuated the situation of poverty that Haiti has been suffering for ages.\n');
fprintf('Kiribati: the biggest relative error in the graph takes place during 1977, but there is not a significant event that explains this error in data. Apart from that, during the seven decades studied, the tendency of Kiribatis life expectandy growth was always the same.\n This slow but secure life expectancy advancement is due to the geographical location: it is an isolated republic in the middle of the Pacific Ocean.\n This fact acts as an advantage, since it has not been involved in wars or political disputes; but also is a crucial drawback, due to the fact that they do not have natural resources to exploit and importation of goods is an arduous task.\n');

disp(' --- ANSWER TO QUESTION 4----');
fprintf('As time goes by, we consider data is neither easier nor more difficult to predict. Since, taking a look at these 5 graphs, it is unpredictability stands out, as a consequence of not seeing a clear pattern of the data based on the time and country.\n');
fprintf('Therefore, from this we can conclude that splines is a good method of approximating life expectancy. Life expectancy depends on uncountable aspects which we are not able to tell in advanced, since they are extremely spontaneous, as well as specific to each decade and country,such as, earthquakes, wars, economic crisis, location...\n ');
fprintf('Although, we would like to point out the importance of being a first-world country in respect to a third-world country, or a country in development.Privileged countries have had noticeable advances in medicine, health care, hygine... which have a great impact in the life expectancy, since these countries,\ncl discarding spontaneous events, in general, are constantly increasing.');
fprintf('Whereas, we can observe that third-world countries, discarding spontaneous events, have also increased in a constant way.');


function[finalTable]=tableCreator(country,splineMatrix,dataMatrix)
k=1;
for i=1:7
    syms f(x)
    f(x)=splineMatrix(1,i);
    predictedValue(k,1)=double(f(10*(i-1)+1));
    realValue(k,1)=dataMatrix{country,10*(i-1)+2};
    yearsAfter1950(k,1)=10*(i-1)+1;
    absError(k,1)=double(abs(realValue(k,1)-predictedValue(k,1)));
    relError(k,1)=(absError(k,1))/realValue(k,1);
    k=k+1;
    
    syms f(x)
    f(x)=splineMatrix(1,i);
    predictedValue(k,1)=f(10*(i-1)+2);
    realValue(k,1)=dataMatrix{country,10*(i-1)+3};
    yearsAfter1950(k,1)=10*(i-1)+2;
    absError(k,1)=abs(realValue(k,1)-predictedValue(k,1));
    relError(k,1)=(absError(k,1))/realValue(k,1);
    k=k+1;
    
    syms f(x)
    f(x)=splineMatrix(2,i);
    predictedValue(k,1)=f(10*(i-1)+4);
    realValue(k,1)=dataMatrix{country,10*(i-1)+5};
    yearsAfter1950(k,1)=10*(i-1)+4;
    absError(k,1)=abs(realValue(k,1)-predictedValue(k,1));
    relError(k,1)=(absError(k,1))/realValue(k,1);
    k=k+1;
    
    syms f(x)
    f(x)=splineMatrix(2,i);
    predictedValue(k,1)=f(10*(i-1)+5);
    realValue(k,1)=dataMatrix{country,10*(i-1)+6};
    yearsAfter1950(k,1)=10*(i-1)+5;
    absError(k,1)=abs(realValue(k,1)-predictedValue(k,1));
    relError(k,1)=(absError(k,1))/realValue(k,1);
    k=k+1;
    
    syms f(x)
    f(x)=splineMatrix(3,i);
    predictedValue(k,1)=f(10*(i-1)+7);
    realValue(k,1)=dataMatrix{country,10*(i-1)+8};
    yearsAfter1950(k,1)=10*(i-1)+7;
    absError(k,1)=abs(realValue(k,1)-predictedValue(k,1));
    relError(k,1)=(absError(k,1))/realValue(k,1);
    k=k+1;
    
    syms f(x)
    f(x)=splineMatrix(3,i);
    predictedValue(k,1)=f(10*(i-1)+8);
    realValue(k,1)=dataMatrix{country,10*(i-1)+9};
    yearsAfter1950(k,1)=10*(i-1)+8;
    absError(k,1)=abs(realValue(k,1)-predictedValue(k,1));
    relError(k,1)=(absError(k,1))/realValue(k,1);
    k=k+1;
end
finalTable=table(yearsAfter1950,realValue,predictedValue,absError,relError);
end


function[splineVector] = splineFunction(Matrix,countryNumber)
    for i=0:6
        %Selecting years 0, 3, 6 and 9 of each decade, so h=33=6
        pV{1,1}=Matrix{countryNumber,10*i+1}; %pV stands for pointsVector
        pV{1,2}=Matrix{countryNumber,4+10*i};
        pV{1,3}=Matrix{countryNumber,7+10*i};
        pV{1,4}=Matrix{countryNumber,10+10*i};
        %Since h is always the same, ak and bk will always be the same: 
        %a = 1/2 , b = 2
        coefficientMatrix=[2, 1/2; 1/2, 2];
        uVector = [(pV{1,3}-2*pV{1,2}+pV{1,1})/3; (pV{1,4}-2*pV{1,3}+pV{1,2})/3];
        mVector = linsolve(coefficientMatrix, uVector);
        syms x;
        splineProv0=pV{1,1}+(x-(10*i))*((pV{1,2}-pV{1,1})/3-(2*0+mVector(1))/2)+((x-(10*i))^3)*((mVector(1)-0)/18);
        splineProv1=pV{1,2}+(x-(10*i+3))*((pV{1,3}-pV{1,2})/3-(2*mVector(1)+mVector(2))/2)+((x-(10*i+3))^2)*((mVector(1))/2)+((x-(10*i+3))^3)*((mVector(2)-mVector(1))/18);
        splineProv2=pV{1,3}+(x-(10*i+6))*((pV{1,4}-pV{1,3})/3-(2*mVector(2)+0)/2)+((x-(10*i+6))^2)*((mVector(2))/2)+((x-(10*i+6))^3)*((0-mVector(2))/18);
        splineVector(1,1+i)=splineProv0;
        splineVector(2,1+i)=splineProv1;
        splineVector(3,1+i)=splineProv2;
    end
end






