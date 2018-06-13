>> load fisheriris
>> 
>> whos
  Name           Size            Bytes  Class     Attributes

  meas         150x4              4800  double              
  species      150x1             19300  cell                

 
>> X = meas;
>> figure; hist(X(:, 1))


 
>> figure; plot(X(:, 1),X(:,2),'.')
>> C = X'*X

C =

   1.0e+03 *

    5.2239    2.6734    3.4838    1.1281
    2.6734    1.4304    1.6743    0.5319
    3.4838    1.6743    2.5827    0.8691
    1.1281    0.5319    0.8691    0.3023

>> [W, lambda] = eig(C);
>> W

W =

   -0.3208   -0.5022   -0.2842    0.7511
    0.3173    0.6752   -0.5467    0.3801
    0.4807    0.0592    0.7087    0.5130
   -0.7519    0.5370    0.3437    0.1679



lambda =

   1.0e+03 *

    0.0036         0         0         0
         0    0.0120         0         0
         0         0    0.3155         0
         0         0         0    9.2083

>> W = W(:,end:-1:1)

W =

    0.7511   -0.2842   -0.5022   -0.3208
    0.3801   -0.5467    0.6752    0.3173
    0.5130    0.7087    0.0592    0.4807
    0.1679    0.3437    0.5370   -0.7519

>> lambda = lambda(:,end:-1:1)

lambda =

   1.0e+03 *

         0         0         0    0.0036
         0         0    0.0120         0
         0    0.3155         0         0
    9.2083         0         0         0

>> [U,sigma,V] = svd(X);
>> V

V =

   -0.7511    0.2842    0.5022    0.3208
   -0.3801    0.5467   -0.6752   -0.3173
   -0.5130   -0.7087   -0.0592   -0.4807
   -0.1679   -0.3437   -0.5370    0.7519

>> -V

ans =

    0.7511   -0.2842   -0.5022   -0.3208
    0.3801   -0.5467    0.6752    0.3173
    0.5130    0.7087    0.0592    0.4807
    0.1679    0.3437    0.5370   -0.7519

>> W

W =

    0.7511   -0.2842   -0.5022   -0.3208
    0.3801   -0.5467    0.6752    0.3173
    0.5130    0.7087    0.0592    0.4807
    0.1679    0.3437    0.5370   -0.7519

>> V_r = V(:,1:2)

V_r =

   -0.7511    0.2842
   -0.3801    0.5467
   -0.5130   -0.7087
   -0.1679   -0.3437

>> a = meas*V_r;
>> size(a)

ans =

   150     2

>> figure;plot(a(:,1),a(:,2),'.');
>> xlabel('PC1');ylabel('PC2')
>> figure;plot(a(:,1),a(:,2),'.');
>> xlabel('PC1');ylabel('PC2');
>> figure;plot(a(:,1),a(:,2),'.');

>> sigma

sigma =

   95.9599         0         0         0
         0   17.7610         0         0
         0         0    3.4609         0
         0         0         0    1.8848
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0
         0         0         0         0

>> size(sigma)

ans =

   150     4

>> sv = diag(sigma)

sv =

   95.9599
   17.7610
    3.4609
    1.8848

#this will print a step function
>> figure;stairs(cumsum(sv)/sum(sv));
>> species

species =

  150×1 cell array

    'setosa'
    'setosa'
    'setosa'
    'setosa'
    'setosa'
    'setosa'
    'setosa'
    'setosa'
    'setosa'
    'setosa'
    'setosa'
    'setosa'
    'setosa'
    'setosa'
    'setosa'
    'setosa'
    'setosa'
    'setosa'
    'setosa'
    'setosa'
    'setosa'
    'setosa'
    'setosa'
    'setosa'
    'setosa'
    'setosa'
    'setosa'
    'setosa'
    'setosa'
    'setosa'
    'setosa'
    'setosa'
    'setosa'
    'setosa'
    'setosa'
    'setosa'
    'setosa'
    'setosa'
    'setosa'
    'setosa'
    'setosa'
    'setosa'
    'setosa'
    'setosa'
    'setosa'
    'setosa'
    'setosa'
    'setosa'
    'setosa'
    'setosa'
    'versicolor'
    'versicolor'
    'versicolor'
    'versicolor'
    'versicolor'
    'versicolor'
    'versicolor'
    'versicolor'
    'versicolor'
    'versicolor'
    'versicolor'
    'versicolor'
    'versicolor'
    'versicolor'
    'versicolor'
    'versicolor'
    'versicolor'
    'versicolor'
    'versicolor'
    'versicolor'
    'versicolor'
    'versicolor'
    'versicolor'
    'versicolor'
    'versicolor'
    'versicolor'
    'versicolor'
    'versicolor'
    'versicolor'
    'versicolor'
    'versicolor'
    'versicolor'
    'versicolor'
    'versicolor'
    'versicolor'
    'versicolor'
    'versicolor'
    'versicolor'
    'versicolor'
    'versicolor'
    'versicolor'
    'versicolor'
    'versicolor'
    'versicolor'
    'versicolor'
    'versicolor'
    'versicolor'
    'versicolor'
    'versicolor'
    'versicolor'
    'virginica'
    'virginica'
    'virginica'
    'virginica'
    'virginica'
    'virginica'
    'virginica'
    'virginica'
    'virginica'
    'virginica'
    'virginica'
    'virginica'
    'virginica'
    'virginica'
    'virginica'
    'virginica'
    'virginica'
    'virginica'
    'virginica'
    'virginica'
    'virginica'
    'virginica'
    'virginica'
    'virginica'
    'virginica'
    'virginica'
    'virginica'
    'virginica'
    'virginica'
    'virginica'
    'virginica'
    'virginica'
    'virginica'
    'virginica'
    'virginica'
    'virginica'
    'virginica'
    'virginica'
    'virginica'
    'virginica'
    'virginica'
    'virginica'
    'virginica'
    'virginica'
    'virginica'
    'virginica'
    'virginica'
    'virginica'
    'virginica'
    'virginica'
 
>> figure;scatter(a(:,1),a(:,2),30,categorical(species));



class Yes(object):




class 