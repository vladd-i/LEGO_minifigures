ú¢
¤ú
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype

Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

,
Exp
x"T
y"T"
Ttype:

2
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
?
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:

RandomStandardNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	

ResizeNearestNeighbor
images"T
size
resized_images"T"
Ttype:
2
	"
align_cornersbool( "
half_pixel_centersbool( 
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
7
Square
x"T
y"T"
Ttype:
2	
Á
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
ö
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.8.02v2.8.0-0-g3f878cff5b68¼ò
x
z_mean/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
À*
shared_namez_mean/kernel
q
!z_mean/kernel/Read/ReadVariableOpReadVariableOpz_mean/kernel* 
_output_shapes
:
À*
dtype0
o
z_mean/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namez_mean/bias
h
z_mean/bias/Read/ReadVariableOpReadVariableOpz_mean/bias*
_output_shapes	
:*
dtype0
~
z_log_var/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
À*!
shared_namez_log_var/kernel
w
$z_log_var/kernel/Read/ReadVariableOpReadVariableOpz_log_var/kernel* 
_output_shapes
:
À*
dtype0
u
z_log_var/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namez_log_var/bias
n
"z_log_var/bias/Read/ReadVariableOpReadVariableOpz_log_var/bias*
_output_shapes	
:*
dtype0
|
dense_17/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
À* 
shared_namedense_17/kernel
u
#dense_17/kernel/Read/ReadVariableOpReadVariableOpdense_17/kernel* 
_output_shapes
:
À*
dtype0
s
dense_17/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:À*
shared_namedense_17/bias
l
!dense_17/bias/Read/ReadVariableOpReadVariableOpdense_17/bias*
_output_shapes	
:À*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0

conv2d_104/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*"
shared_nameconv2d_104/kernel

%conv2d_104/kernel/Read/ReadVariableOpReadVariableOpconv2d_104/kernel*&
_output_shapes
:	*
dtype0
v
conv2d_104/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	* 
shared_nameconv2d_104/bias
o
#conv2d_104/bias/Read/ReadVariableOpReadVariableOpconv2d_104/bias*
_output_shapes
:	*
dtype0

conv2d_105/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*"
shared_nameconv2d_105/kernel

%conv2d_105/kernel/Read/ReadVariableOpReadVariableOpconv2d_105/kernel*&
_output_shapes
:	*
dtype0
v
conv2d_105/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_105/bias
o
#conv2d_105/bias/Read/ReadVariableOpReadVariableOpconv2d_105/bias*
_output_shapes
:*
dtype0

conv2d_106/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv2d_106/kernel

%conv2d_106/kernel/Read/ReadVariableOpReadVariableOpconv2d_106/kernel*&
_output_shapes
: *
dtype0
v
conv2d_106/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_106/bias
o
#conv2d_106/bias/Read/ReadVariableOpReadVariableOpconv2d_106/bias*
_output_shapes
: *
dtype0

conv2d_107/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*"
shared_nameconv2d_107/kernel

%conv2d_107/kernel/Read/ReadVariableOpReadVariableOpconv2d_107/kernel*&
_output_shapes
: @*
dtype0
v
conv2d_107/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv2d_107/bias
o
#conv2d_107/bias/Read/ReadVariableOpReadVariableOpconv2d_107/bias*
_output_shapes
:@*
dtype0

conv2d_108/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*"
shared_nameconv2d_108/kernel

%conv2d_108/kernel/Read/ReadVariableOpReadVariableOpconv2d_108/kernel*&
_output_shapes
:@@*
dtype0
v
conv2d_108/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv2d_108/bias
o
#conv2d_108/bias/Read/ReadVariableOpReadVariableOpconv2d_108/bias*
_output_shapes
:@*
dtype0

conv2d_109/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *"
shared_nameconv2d_109/kernel

%conv2d_109/kernel/Read/ReadVariableOpReadVariableOpconv2d_109/kernel*&
_output_shapes
:@ *
dtype0
v
conv2d_109/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_109/bias
o
#conv2d_109/bias/Read/ReadVariableOpReadVariableOpconv2d_109/bias*
_output_shapes
: *
dtype0

conv2d_110/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv2d_110/kernel

%conv2d_110/kernel/Read/ReadVariableOpReadVariableOpconv2d_110/kernel*&
_output_shapes
: *
dtype0
v
conv2d_110/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_110/bias
o
#conv2d_110/bias/Read/ReadVariableOpReadVariableOpconv2d_110/bias*
_output_shapes
:*
dtype0

conv2d_111/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv2d_111/kernel

%conv2d_111/kernel/Read/ReadVariableOpReadVariableOpconv2d_111/kernel*&
_output_shapes
:*
dtype0
v
conv2d_111/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_111/bias
o
#conv2d_111/bias/Read/ReadVariableOpReadVariableOpconv2d_111/bias*
_output_shapes
:*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0

Adam/z_mean/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
À*%
shared_nameAdam/z_mean/kernel/m

(Adam/z_mean/kernel/m/Read/ReadVariableOpReadVariableOpAdam/z_mean/kernel/m* 
_output_shapes
:
À*
dtype0
}
Adam/z_mean/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/z_mean/bias/m
v
&Adam/z_mean/bias/m/Read/ReadVariableOpReadVariableOpAdam/z_mean/bias/m*
_output_shapes	
:*
dtype0

Adam/z_log_var/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
À*(
shared_nameAdam/z_log_var/kernel/m

+Adam/z_log_var/kernel/m/Read/ReadVariableOpReadVariableOpAdam/z_log_var/kernel/m* 
_output_shapes
:
À*
dtype0

Adam/z_log_var/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/z_log_var/bias/m
|
)Adam/z_log_var/bias/m/Read/ReadVariableOpReadVariableOpAdam/z_log_var/bias/m*
_output_shapes	
:*
dtype0

Adam/dense_17/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
À*'
shared_nameAdam/dense_17/kernel/m

*Adam/dense_17/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_17/kernel/m* 
_output_shapes
:
À*
dtype0

Adam/dense_17/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:À*%
shared_nameAdam/dense_17/bias/m
z
(Adam/dense_17/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_17/bias/m*
_output_shapes	
:À*
dtype0

Adam/conv2d_104/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*)
shared_nameAdam/conv2d_104/kernel/m

,Adam/conv2d_104/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_104/kernel/m*&
_output_shapes
:	*
dtype0

Adam/conv2d_104/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*'
shared_nameAdam/conv2d_104/bias/m
}
*Adam/conv2d_104/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_104/bias/m*
_output_shapes
:	*
dtype0

Adam/conv2d_105/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*)
shared_nameAdam/conv2d_105/kernel/m

,Adam/conv2d_105/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_105/kernel/m*&
_output_shapes
:	*
dtype0

Adam/conv2d_105/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_105/bias/m
}
*Adam/conv2d_105/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_105/bias/m*
_output_shapes
:*
dtype0

Adam/conv2d_106/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameAdam/conv2d_106/kernel/m

,Adam/conv2d_106/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_106/kernel/m*&
_output_shapes
: *
dtype0

Adam/conv2d_106/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv2d_106/bias/m
}
*Adam/conv2d_106/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_106/bias/m*
_output_shapes
: *
dtype0

Adam/conv2d_107/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*)
shared_nameAdam/conv2d_107/kernel/m

,Adam/conv2d_107/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_107/kernel/m*&
_output_shapes
: @*
dtype0

Adam/conv2d_107/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv2d_107/bias/m
}
*Adam/conv2d_107/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_107/bias/m*
_output_shapes
:@*
dtype0

Adam/conv2d_108/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*)
shared_nameAdam/conv2d_108/kernel/m

,Adam/conv2d_108/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_108/kernel/m*&
_output_shapes
:@@*
dtype0

Adam/conv2d_108/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv2d_108/bias/m
}
*Adam/conv2d_108/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_108/bias/m*
_output_shapes
:@*
dtype0

Adam/conv2d_109/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *)
shared_nameAdam/conv2d_109/kernel/m

,Adam/conv2d_109/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_109/kernel/m*&
_output_shapes
:@ *
dtype0

Adam/conv2d_109/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv2d_109/bias/m
}
*Adam/conv2d_109/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_109/bias/m*
_output_shapes
: *
dtype0

Adam/conv2d_110/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameAdam/conv2d_110/kernel/m

,Adam/conv2d_110/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_110/kernel/m*&
_output_shapes
: *
dtype0

Adam/conv2d_110/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_110/bias/m
}
*Adam/conv2d_110/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_110/bias/m*
_output_shapes
:*
dtype0

Adam/conv2d_111/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_111/kernel/m

,Adam/conv2d_111/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_111/kernel/m*&
_output_shapes
:*
dtype0

Adam/conv2d_111/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_111/bias/m
}
*Adam/conv2d_111/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_111/bias/m*
_output_shapes
:*
dtype0

Adam/z_mean/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
À*%
shared_nameAdam/z_mean/kernel/v

(Adam/z_mean/kernel/v/Read/ReadVariableOpReadVariableOpAdam/z_mean/kernel/v* 
_output_shapes
:
À*
dtype0
}
Adam/z_mean/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/z_mean/bias/v
v
&Adam/z_mean/bias/v/Read/ReadVariableOpReadVariableOpAdam/z_mean/bias/v*
_output_shapes	
:*
dtype0

Adam/z_log_var/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
À*(
shared_nameAdam/z_log_var/kernel/v

+Adam/z_log_var/kernel/v/Read/ReadVariableOpReadVariableOpAdam/z_log_var/kernel/v* 
_output_shapes
:
À*
dtype0

Adam/z_log_var/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/z_log_var/bias/v
|
)Adam/z_log_var/bias/v/Read/ReadVariableOpReadVariableOpAdam/z_log_var/bias/v*
_output_shapes	
:*
dtype0

Adam/dense_17/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
À*'
shared_nameAdam/dense_17/kernel/v

*Adam/dense_17/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_17/kernel/v* 
_output_shapes
:
À*
dtype0

Adam/dense_17/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:À*%
shared_nameAdam/dense_17/bias/v
z
(Adam/dense_17/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_17/bias/v*
_output_shapes	
:À*
dtype0

Adam/conv2d_104/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*)
shared_nameAdam/conv2d_104/kernel/v

,Adam/conv2d_104/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_104/kernel/v*&
_output_shapes
:	*
dtype0

Adam/conv2d_104/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*'
shared_nameAdam/conv2d_104/bias/v
}
*Adam/conv2d_104/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_104/bias/v*
_output_shapes
:	*
dtype0

Adam/conv2d_105/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*)
shared_nameAdam/conv2d_105/kernel/v

,Adam/conv2d_105/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_105/kernel/v*&
_output_shapes
:	*
dtype0

Adam/conv2d_105/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_105/bias/v
}
*Adam/conv2d_105/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_105/bias/v*
_output_shapes
:*
dtype0

Adam/conv2d_106/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameAdam/conv2d_106/kernel/v

,Adam/conv2d_106/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_106/kernel/v*&
_output_shapes
: *
dtype0

Adam/conv2d_106/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv2d_106/bias/v
}
*Adam/conv2d_106/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_106/bias/v*
_output_shapes
: *
dtype0

Adam/conv2d_107/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*)
shared_nameAdam/conv2d_107/kernel/v

,Adam/conv2d_107/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_107/kernel/v*&
_output_shapes
: @*
dtype0

Adam/conv2d_107/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv2d_107/bias/v
}
*Adam/conv2d_107/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_107/bias/v*
_output_shapes
:@*
dtype0

Adam/conv2d_108/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*)
shared_nameAdam/conv2d_108/kernel/v

,Adam/conv2d_108/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_108/kernel/v*&
_output_shapes
:@@*
dtype0

Adam/conv2d_108/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv2d_108/bias/v
}
*Adam/conv2d_108/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_108/bias/v*
_output_shapes
:@*
dtype0

Adam/conv2d_109/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *)
shared_nameAdam/conv2d_109/kernel/v

,Adam/conv2d_109/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_109/kernel/v*&
_output_shapes
:@ *
dtype0

Adam/conv2d_109/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv2d_109/bias/v
}
*Adam/conv2d_109/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_109/bias/v*
_output_shapes
: *
dtype0

Adam/conv2d_110/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameAdam/conv2d_110/kernel/v

,Adam/conv2d_110/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_110/kernel/v*&
_output_shapes
: *
dtype0

Adam/conv2d_110/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_110/bias/v
}
*Adam/conv2d_110/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_110/bias/v*
_output_shapes
:*
dtype0

Adam/conv2d_111/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_111/kernel/v

,Adam/conv2d_111/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_111/kernel/v*&
_output_shapes
:*
dtype0

Adam/conv2d_111/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_111/bias/v
}
*Adam/conv2d_111/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_111/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
õ±
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*¯±
value¤±B ± B±
Þ
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer-9
layer-10
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
* 

encoder
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*

	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses* 
¦

"kernel
#bias
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses*
¦

*kernel
+bias
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses*

2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses* 
¦

8kernel
9bias
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses*

@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses* 

Fdecoder
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
K__call__
*L&call_and_return_all_conditional_losses*

M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
Q__call__
*R&call_and_return_all_conditional_losses* 

S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
W__call__
*X&call_and_return_all_conditional_losses* 
ü
Yiter

Zbeta_1

[beta_2
	\decay
]learning_rate"mÑ#mÒ*mÓ+mÔ8mÕ9mÖ^m×_mØ`mÙamÚbmÛcmÜdmÝemÞfmßgmàhmáimâjmãkmälmåmmæ"vç#vè*vé+vê8vë9vì^ví_vî`vïavðbvñcvòdvóevôfvõgvöhv÷ivøjvùkvúlvûmvü*
ª
^0
_1
`2
a3
b4
c5
d6
e7
"8
#9
*10
+11
812
913
f14
g15
h16
i17
j18
k19
l20
m21*
ª
^0
_1
`2
a3
b4
c5
d6
e7
"8
#9
*10
+11
812
913
f14
g15
h16
i17
j18
k19
l20
m21*
* 
°
nnon_trainable_variables

olayers
pmetrics
qlayer_regularization_losses
rlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

sserving_default* 
¬
tlayer_with_weights-0
tlayer-0
ulayer_with_weights-1
ulayer-1
vlayer_with_weights-2
vlayer-2
wlayer_with_weights-3
wlayer-3
x	variables
ytrainable_variables
zregularization_losses
{	keras_api
|__call__
*}&call_and_return_all_conditional_losses*
<
^0
_1
`2
a3
b4
c5
d6
e7*
<
^0
_1
`2
a3
b4
c5
d6
e7*
* 

~non_trainable_variables

layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses* 
* 
* 
]W
VARIABLE_VALUEz_mean/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEz_mean/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

"0
#1*

"0
#1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses*
* 
* 
`Z
VARIABLE_VALUEz_log_var/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEz_log_var/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

*0
+1*

*0
+1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses* 
* 
* 
_Y
VARIABLE_VALUEdense_17/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_17/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

80
91*

80
91*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
 layer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses* 
* 
* 
ò
¡layer-0
¢layer_with_weights-0
¢layer-1
£layer-2
¤layer_with_weights-1
¤layer-3
¥layer-4
¦layer_with_weights-2
¦layer-5
§layer-6
¨layer_with_weights-3
¨layer-7
©	variables
ªtrainable_variables
«regularization_losses
¬	keras_api
­__call__
+®&call_and_return_all_conditional_losses*
<
f0
g1
h2
i3
j4
k5
l6
m7*
<
f0
g1
h2
i3
j4
k5
l6
m7*
* 

¯non_trainable_variables
°layers
±metrics
 ²layer_regularization_losses
³layer_metrics
G	variables
Htrainable_variables
Iregularization_losses
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

´non_trainable_variables
µlayers
¶metrics
 ·layer_regularization_losses
¸layer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 

¹non_trainable_variables
ºlayers
»metrics
 ¼layer_regularization_losses
½layer_metrics
S	variables
Ttrainable_variables
Uregularization_losses
W__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses* 
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEconv2d_104/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv2d_104/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEconv2d_105/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv2d_105/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEconv2d_106/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv2d_106/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEconv2d_107/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv2d_107/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEconv2d_108/kernel'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEconv2d_108/bias'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEconv2d_109/kernel'variables/16/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEconv2d_109/bias'variables/17/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEconv2d_110/kernel'variables/18/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEconv2d_110/bias'variables/19/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEconv2d_111/kernel'variables/20/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEconv2d_111/bias'variables/21/.ATTRIBUTES/VARIABLE_VALUE*
* 
R
0
1
2
3
4
5
6
7
	8

9
10*

¾0*
* 
* 
* 
¬

^kernel
_bias
¿	variables
Àtrainable_variables
Áregularization_losses
Â	keras_api
Ã__call__
+Ä&call_and_return_all_conditional_losses*
¬

`kernel
abias
Å	variables
Ætrainable_variables
Çregularization_losses
È	keras_api
É__call__
+Ê&call_and_return_all_conditional_losses*
¬

bkernel
cbias
Ë	variables
Ìtrainable_variables
Íregularization_losses
Î	keras_api
Ï__call__
+Ð&call_and_return_all_conditional_losses*
¬

dkernel
ebias
Ñ	variables
Òtrainable_variables
Óregularization_losses
Ô	keras_api
Õ__call__
+Ö&call_and_return_all_conditional_losses*
<
^0
_1
`2
a3
b4
c5
d6
e7*
<
^0
_1
`2
a3
b4
c5
d6
e7*
* 

×non_trainable_variables
Ølayers
Ùmetrics
 Úlayer_regularization_losses
Ûlayer_metrics
x	variables
ytrainable_variables
zregularization_losses
|__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses*
* 
* 
* 

0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

Ü	variables
Ýtrainable_variables
Þregularization_losses
ß	keras_api
à__call__
+á&call_and_return_all_conditional_losses* 
¬

fkernel
gbias
â	variables
ãtrainable_variables
äregularization_losses
å	keras_api
æ__call__
+ç&call_and_return_all_conditional_losses*

è	variables
étrainable_variables
êregularization_losses
ë	keras_api
ì__call__
+í&call_and_return_all_conditional_losses* 
¬

hkernel
ibias
î	variables
ïtrainable_variables
ðregularization_losses
ñ	keras_api
ò__call__
+ó&call_and_return_all_conditional_losses*

ô	variables
õtrainable_variables
öregularization_losses
÷	keras_api
ø__call__
+ù&call_and_return_all_conditional_losses* 
¬

jkernel
kbias
ú	variables
ûtrainable_variables
üregularization_losses
ý	keras_api
þ__call__
+ÿ&call_and_return_all_conditional_losses*

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses* 
¬

lkernel
mbias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses*
<
f0
g1
h2
i3
j4
k5
l6
m7*
<
f0
g1
h2
i3
j4
k5
l6
m7*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
©	variables
ªtrainable_variables
«regularization_losses
­__call__
+®&call_and_return_all_conditional_losses
'®"call_and_return_conditional_losses*
* 
* 
* 

F0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<

total

count
	variables
	keras_api*

^0
_1*

^0
_1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
¿	variables
Àtrainable_variables
Áregularization_losses
Ã__call__
+Ä&call_and_return_all_conditional_losses
'Ä"call_and_return_conditional_losses*
* 
* 

`0
a1*

`0
a1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
Å	variables
Ætrainable_variables
Çregularization_losses
É__call__
+Ê&call_and_return_all_conditional_losses
'Ê"call_and_return_conditional_losses*
* 
* 

b0
c1*

b0
c1*
* 

non_trainable_variables
 layers
¡metrics
 ¢layer_regularization_losses
£layer_metrics
Ë	variables
Ìtrainable_variables
Íregularization_losses
Ï__call__
+Ð&call_and_return_all_conditional_losses
'Ð"call_and_return_conditional_losses*
* 
* 

d0
e1*

d0
e1*
* 

¤non_trainable_variables
¥layers
¦metrics
 §layer_regularization_losses
¨layer_metrics
Ñ	variables
Òtrainable_variables
Óregularization_losses
Õ__call__
+Ö&call_and_return_all_conditional_losses
'Ö"call_and_return_conditional_losses*
* 
* 
* 
 
t0
u1
v2
w3*
* 
* 
* 
* 
* 
* 

©non_trainable_variables
ªlayers
«metrics
 ¬layer_regularization_losses
­layer_metrics
Ü	variables
Ýtrainable_variables
Þregularization_losses
à__call__
+á&call_and_return_all_conditional_losses
'á"call_and_return_conditional_losses* 
* 
* 

f0
g1*

f0
g1*
* 

®non_trainable_variables
¯layers
°metrics
 ±layer_regularization_losses
²layer_metrics
â	variables
ãtrainable_variables
äregularization_losses
æ__call__
+ç&call_and_return_all_conditional_losses
'ç"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

³non_trainable_variables
´layers
µmetrics
 ¶layer_regularization_losses
·layer_metrics
è	variables
étrainable_variables
êregularization_losses
ì__call__
+í&call_and_return_all_conditional_losses
'í"call_and_return_conditional_losses* 
* 
* 

h0
i1*

h0
i1*
* 

¸non_trainable_variables
¹layers
ºmetrics
 »layer_regularization_losses
¼layer_metrics
î	variables
ïtrainable_variables
ðregularization_losses
ò__call__
+ó&call_and_return_all_conditional_losses
'ó"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

½non_trainable_variables
¾layers
¿metrics
 Àlayer_regularization_losses
Álayer_metrics
ô	variables
õtrainable_variables
öregularization_losses
ø__call__
+ù&call_and_return_all_conditional_losses
'ù"call_and_return_conditional_losses* 
* 
* 

j0
k1*

j0
k1*
* 

Ânon_trainable_variables
Ãlayers
Ämetrics
 Ålayer_regularization_losses
Ælayer_metrics
ú	variables
ûtrainable_variables
üregularization_losses
þ__call__
+ÿ&call_and_return_all_conditional_losses
'ÿ"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

Çnon_trainable_variables
Èlayers
Émetrics
 Êlayer_regularization_losses
Ëlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 
* 
* 

l0
m1*

l0
m1*
* 

Ìnon_trainable_variables
Ílayers
Îmetrics
 Ïlayer_regularization_losses
Ðlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
* 
* 
* 
D
¡0
¢1
£2
¤3
¥4
¦5
§6
¨7*
* 
* 
* 
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

	variables*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
z
VARIABLE_VALUEAdam/z_mean/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/z_mean/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/z_log_var/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/z_log_var/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_17/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_17/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEAdam/conv2d_104/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/conv2d_104/bias/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEAdam/conv2d_105/kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/conv2d_105/bias/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEAdam/conv2d_106/kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/conv2d_106/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEAdam/conv2d_107/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/conv2d_107/bias/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUEAdam/conv2d_108/kernel/mCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEAdam/conv2d_108/bias/mCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUEAdam/conv2d_109/kernel/mCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEAdam/conv2d_109/bias/mCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUEAdam/conv2d_110/kernel/mCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEAdam/conv2d_110/bias/mCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUEAdam/conv2d_111/kernel/mCvariables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEAdam/conv2d_111/bias/mCvariables/21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/z_mean/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/z_mean/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/z_log_var/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/z_log_var/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_17/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_17/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEAdam/conv2d_104/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/conv2d_104/bias/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEAdam/conv2d_105/kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/conv2d_105/bias/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEAdam/conv2d_106/kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/conv2d_106/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEAdam/conv2d_107/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/conv2d_107/bias/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUEAdam/conv2d_108/kernel/vCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEAdam/conv2d_108/bias/vCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUEAdam/conv2d_109/kernel/vCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEAdam/conv2d_109/bias/vCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUEAdam/conv2d_110/kernel/vCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEAdam/conv2d_110/bias/vCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUEAdam/conv2d_111/kernel/vCvariables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEAdam/conv2d_111/bias/vCvariables/21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

serving_default_input_39Placeholder*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP*
dtype0*$
shape:ÿÿÿÿÿÿÿÿÿPP
è
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_39conv2d_104/kernelconv2d_104/biasconv2d_105/kernelconv2d_105/biasconv2d_106/kernelconv2d_106/biasconv2d_107/kernelconv2d_107/biasz_mean/kernelz_mean/biasz_log_var/kernelz_log_var/biasdense_17/kerneldense_17/biasconv2d_108/kernelconv2d_108/biasconv2d_109/kernelconv2d_109/biasconv2d_110/kernelconv2d_110/biasconv2d_111/kernelconv2d_111/bias*"
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP*8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *-
f(R&
$__inference_signature_wrapper_100971
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename!z_mean/kernel/Read/ReadVariableOpz_mean/bias/Read/ReadVariableOp$z_log_var/kernel/Read/ReadVariableOp"z_log_var/bias/Read/ReadVariableOp#dense_17/kernel/Read/ReadVariableOp!dense_17/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp%conv2d_104/kernel/Read/ReadVariableOp#conv2d_104/bias/Read/ReadVariableOp%conv2d_105/kernel/Read/ReadVariableOp#conv2d_105/bias/Read/ReadVariableOp%conv2d_106/kernel/Read/ReadVariableOp#conv2d_106/bias/Read/ReadVariableOp%conv2d_107/kernel/Read/ReadVariableOp#conv2d_107/bias/Read/ReadVariableOp%conv2d_108/kernel/Read/ReadVariableOp#conv2d_108/bias/Read/ReadVariableOp%conv2d_109/kernel/Read/ReadVariableOp#conv2d_109/bias/Read/ReadVariableOp%conv2d_110/kernel/Read/ReadVariableOp#conv2d_110/bias/Read/ReadVariableOp%conv2d_111/kernel/Read/ReadVariableOp#conv2d_111/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp(Adam/z_mean/kernel/m/Read/ReadVariableOp&Adam/z_mean/bias/m/Read/ReadVariableOp+Adam/z_log_var/kernel/m/Read/ReadVariableOp)Adam/z_log_var/bias/m/Read/ReadVariableOp*Adam/dense_17/kernel/m/Read/ReadVariableOp(Adam/dense_17/bias/m/Read/ReadVariableOp,Adam/conv2d_104/kernel/m/Read/ReadVariableOp*Adam/conv2d_104/bias/m/Read/ReadVariableOp,Adam/conv2d_105/kernel/m/Read/ReadVariableOp*Adam/conv2d_105/bias/m/Read/ReadVariableOp,Adam/conv2d_106/kernel/m/Read/ReadVariableOp*Adam/conv2d_106/bias/m/Read/ReadVariableOp,Adam/conv2d_107/kernel/m/Read/ReadVariableOp*Adam/conv2d_107/bias/m/Read/ReadVariableOp,Adam/conv2d_108/kernel/m/Read/ReadVariableOp*Adam/conv2d_108/bias/m/Read/ReadVariableOp,Adam/conv2d_109/kernel/m/Read/ReadVariableOp*Adam/conv2d_109/bias/m/Read/ReadVariableOp,Adam/conv2d_110/kernel/m/Read/ReadVariableOp*Adam/conv2d_110/bias/m/Read/ReadVariableOp,Adam/conv2d_111/kernel/m/Read/ReadVariableOp*Adam/conv2d_111/bias/m/Read/ReadVariableOp(Adam/z_mean/kernel/v/Read/ReadVariableOp&Adam/z_mean/bias/v/Read/ReadVariableOp+Adam/z_log_var/kernel/v/Read/ReadVariableOp)Adam/z_log_var/bias/v/Read/ReadVariableOp*Adam/dense_17/kernel/v/Read/ReadVariableOp(Adam/dense_17/bias/v/Read/ReadVariableOp,Adam/conv2d_104/kernel/v/Read/ReadVariableOp*Adam/conv2d_104/bias/v/Read/ReadVariableOp,Adam/conv2d_105/kernel/v/Read/ReadVariableOp*Adam/conv2d_105/bias/v/Read/ReadVariableOp,Adam/conv2d_106/kernel/v/Read/ReadVariableOp*Adam/conv2d_106/bias/v/Read/ReadVariableOp,Adam/conv2d_107/kernel/v/Read/ReadVariableOp*Adam/conv2d_107/bias/v/Read/ReadVariableOp,Adam/conv2d_108/kernel/v/Read/ReadVariableOp*Adam/conv2d_108/bias/v/Read/ReadVariableOp,Adam/conv2d_109/kernel/v/Read/ReadVariableOp*Adam/conv2d_109/bias/v/Read/ReadVariableOp,Adam/conv2d_110/kernel/v/Read/ReadVariableOp*Adam/conv2d_110/bias/v/Read/ReadVariableOp,Adam/conv2d_111/kernel/v/Read/ReadVariableOp*Adam/conv2d_111/bias/v/Read/ReadVariableOpConst*V
TinO
M2K	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *(
f#R!
__inference__traced_save_102081
ã
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamez_mean/kernelz_mean/biasz_log_var/kernelz_log_var/biasdense_17/kerneldense_17/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateconv2d_104/kernelconv2d_104/biasconv2d_105/kernelconv2d_105/biasconv2d_106/kernelconv2d_106/biasconv2d_107/kernelconv2d_107/biasconv2d_108/kernelconv2d_108/biasconv2d_109/kernelconv2d_109/biasconv2d_110/kernelconv2d_110/biasconv2d_111/kernelconv2d_111/biastotalcountAdam/z_mean/kernel/mAdam/z_mean/bias/mAdam/z_log_var/kernel/mAdam/z_log_var/bias/mAdam/dense_17/kernel/mAdam/dense_17/bias/mAdam/conv2d_104/kernel/mAdam/conv2d_104/bias/mAdam/conv2d_105/kernel/mAdam/conv2d_105/bias/mAdam/conv2d_106/kernel/mAdam/conv2d_106/bias/mAdam/conv2d_107/kernel/mAdam/conv2d_107/bias/mAdam/conv2d_108/kernel/mAdam/conv2d_108/bias/mAdam/conv2d_109/kernel/mAdam/conv2d_109/bias/mAdam/conv2d_110/kernel/mAdam/conv2d_110/bias/mAdam/conv2d_111/kernel/mAdam/conv2d_111/bias/mAdam/z_mean/kernel/vAdam/z_mean/bias/vAdam/z_log_var/kernel/vAdam/z_log_var/bias/vAdam/dense_17/kernel/vAdam/dense_17/bias/vAdam/conv2d_104/kernel/vAdam/conv2d_104/bias/vAdam/conv2d_105/kernel/vAdam/conv2d_105/bias/vAdam/conv2d_106/kernel/vAdam/conv2d_106/bias/vAdam/conv2d_107/kernel/vAdam/conv2d_107/bias/vAdam/conv2d_108/kernel/vAdam/conv2d_108/bias/vAdam/conv2d_109/kernel/vAdam/conv2d_109/bias/vAdam/conv2d_110/kernel/vAdam/conv2d_110/bias/vAdam/conv2d_111/kernel/vAdam/conv2d_111/bias/v*U
TinN
L2J*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *+
f&R$
"__inference__traced_restore_102310þû
Ç

'__inference_z_mean_layer_call_fn_101097

inputs
unknown:
À
	unknown_0:	
identity¢StatefulPartitionedCallÚ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_z_mean_layer_call_and_return_conditional_losses_99753p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿÀ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 
_user_specified_nameinputs
¼
M
1__inference_up_sampling2d_53_layer_call_fn_101733

inputs
identityÜ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_53_layer_call_and_return_conditional_losses_99351
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
É(

I__inference_sequential_26_layer_call_and_return_conditional_losses_101473

inputsC
)conv2d_104_conv2d_readvariableop_resource:	8
*conv2d_104_biasadd_readvariableop_resource:	C
)conv2d_105_conv2d_readvariableop_resource:	8
*conv2d_105_biasadd_readvariableop_resource:C
)conv2d_106_conv2d_readvariableop_resource: 8
*conv2d_106_biasadd_readvariableop_resource: C
)conv2d_107_conv2d_readvariableop_resource: @8
*conv2d_107_biasadd_readvariableop_resource:@
identity¢!conv2d_104/BiasAdd/ReadVariableOp¢ conv2d_104/Conv2D/ReadVariableOp¢!conv2d_105/BiasAdd/ReadVariableOp¢ conv2d_105/Conv2D/ReadVariableOp¢!conv2d_106/BiasAdd/ReadVariableOp¢ conv2d_106/Conv2D/ReadVariableOp¢!conv2d_107/BiasAdd/ReadVariableOp¢ conv2d_107/Conv2D/ReadVariableOp
 conv2d_104/Conv2D/ReadVariableOpReadVariableOp)conv2d_104_conv2d_readvariableop_resource*&
_output_shapes
:	*
dtype0¯
conv2d_104/Conv2DConv2Dinputs(conv2d_104/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	*
paddingSAME*
strides

!conv2d_104/BiasAdd/ReadVariableOpReadVariableOp*conv2d_104_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0
conv2d_104/BiasAddBiasAddconv2d_104/Conv2D:output:0)conv2d_104/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	n
conv2d_104/ReluReluconv2d_104/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	
 conv2d_105/Conv2D/ReadVariableOpReadVariableOp)conv2d_105_conv2d_readvariableop_resource*&
_output_shapes
:	*
dtype0Æ
conv2d_105/Conv2DConv2Dconv2d_104/Relu:activations:0(conv2d_105/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides

!conv2d_105/BiasAdd/ReadVariableOpReadVariableOp*conv2d_105_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_105/BiasAddBiasAddconv2d_105/Conv2D:output:0)conv2d_105/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
conv2d_105/ReluReluconv2d_105/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 conv2d_106/Conv2D/ReadVariableOpReadVariableOp)conv2d_106_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Æ
conv2d_106/Conv2DConv2Dconv2d_105/Relu:activations:0(conv2d_106/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 *
paddingSAME*
strides

!conv2d_106/BiasAdd/ReadVariableOpReadVariableOp*conv2d_106_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_106/BiasAddBiasAddconv2d_106/Conv2D:output:0)conv2d_106/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 n
conv2d_106/ReluReluconv2d_106/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
 conv2d_107/Conv2D/ReadVariableOpReadVariableOp)conv2d_107_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Æ
conv2d_107/Conv2DConv2Dconv2d_106/Relu:activations:0(conv2d_107/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides

!conv2d_107/BiasAdd/ReadVariableOpReadVariableOp*conv2d_107_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_107/BiasAddBiasAddconv2d_107/Conv2D:output:0)conv2d_107/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
conv2d_107/ReluReluconv2d_107/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@t
IdentityIdentityconv2d_107/Relu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@â
NoOpNoOp"^conv2d_104/BiasAdd/ReadVariableOp!^conv2d_104/Conv2D/ReadVariableOp"^conv2d_105/BiasAdd/ReadVariableOp!^conv2d_105/Conv2D/ReadVariableOp"^conv2d_106/BiasAdd/ReadVariableOp!^conv2d_106/Conv2D/ReadVariableOp"^conv2d_107/BiasAdd/ReadVariableOp!^conv2d_107/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿPP: : : : : : : : 2F
!conv2d_104/BiasAdd/ReadVariableOp!conv2d_104/BiasAdd/ReadVariableOp2D
 conv2d_104/Conv2D/ReadVariableOp conv2d_104/Conv2D/ReadVariableOp2F
!conv2d_105/BiasAdd/ReadVariableOp!conv2d_105/BiasAdd/ReadVariableOp2D
 conv2d_105/Conv2D/ReadVariableOp conv2d_105/Conv2D/ReadVariableOp2F
!conv2d_106/BiasAdd/ReadVariableOp!conv2d_106/BiasAdd/ReadVariableOp2D
 conv2d_106/Conv2D/ReadVariableOp conv2d_106/Conv2D/ReadVariableOp2F
!conv2d_107/BiasAdd/ReadVariableOp!conv2d_107/BiasAdd/ReadVariableOp2D
 conv2d_107/Conv2D/ReadVariableOp conv2d_107/Conv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP
 
_user_specified_nameinputs
Ò	
ø
D__inference_z_log_var_layer_call_and_return_conditional_losses_99769

inputs2
matmul_readvariableop_resource:
À.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
À*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿÀ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 
_user_specified_nameinputs

þ
E__inference_conv2d_105_layer_call_and_return_conditional_losses_99081

inputs8
conv2d_readvariableop_resource:	-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:	*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ((	: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	
 
_user_specified_nameinputs
¦

÷
C__inference_dense_17_layer_call_and_return_conditional_losses_99814

inputs2
matmul_readvariableop_resource:
À.
biasadd_readvariableop_resource:	À
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
À*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:À*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ï	
Ò
(__inference_decoder_layer_call_fn_101218
z!
unknown:@@
	unknown_0:@#
	unknown_1:@ 
	unknown_2: #
	unknown_3: 
	unknown_4:#
	unknown_5:
	unknown_6:
identity¢StatefulPartitionedCall«
StatefulPartitionedCallStatefulPartitionedCallzunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_decoder_layer_call_and_return_conditional_losses_99884w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ@: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@

_user_specified_namez
H
Õ
C__inference_decoder_layer_call_and_return_conditional_losses_101287
zQ
7sequential_27_conv2d_108_conv2d_readvariableop_resource:@@F
8sequential_27_conv2d_108_biasadd_readvariableop_resource:@Q
7sequential_27_conv2d_109_conv2d_readvariableop_resource:@ F
8sequential_27_conv2d_109_biasadd_readvariableop_resource: Q
7sequential_27_conv2d_110_conv2d_readvariableop_resource: F
8sequential_27_conv2d_110_biasadd_readvariableop_resource:Q
7sequential_27_conv2d_111_conv2d_readvariableop_resource:F
8sequential_27_conv2d_111_biasadd_readvariableop_resource:
identity¢/sequential_27/conv2d_108/BiasAdd/ReadVariableOp¢.sequential_27/conv2d_108/Conv2D/ReadVariableOp¢/sequential_27/conv2d_109/BiasAdd/ReadVariableOp¢.sequential_27/conv2d_109/Conv2D/ReadVariableOp¢/sequential_27/conv2d_110/BiasAdd/ReadVariableOp¢.sequential_27/conv2d_110/Conv2D/ReadVariableOp¢/sequential_27/conv2d_111/BiasAdd/ReadVariableOp¢.sequential_27/conv2d_111/Conv2D/ReadVariableOpu
$sequential_27/up_sampling2d_52/ConstConst*
_output_shapes
:*
dtype0*
valueB"      w
&sequential_27/up_sampling2d_52/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      ®
"sequential_27/up_sampling2d_52/mulMul-sequential_27/up_sampling2d_52/Const:output:0/sequential_27/up_sampling2d_52/Const_1:output:0*
T0*
_output_shapes
:Ó
;sequential_27/up_sampling2d_52/resize/ResizeNearestNeighborResizeNearestNeighborz&sequential_27/up_sampling2d_52/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

@*
half_pixel_centers(®
.sequential_27/conv2d_108/Conv2D/ReadVariableOpReadVariableOp7sequential_27_conv2d_108_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
sequential_27/conv2d_108/Conv2DConv2DLsequential_27/up_sampling2d_52/resize/ResizeNearestNeighbor:resized_images:06sequential_27/conv2d_108/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

@*
paddingSAME*
strides
¤
/sequential_27/conv2d_108/BiasAdd/ReadVariableOpReadVariableOp8sequential_27_conv2d_108_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0È
 sequential_27/conv2d_108/BiasAddBiasAdd(sequential_27/conv2d_108/Conv2D:output:07sequential_27/conv2d_108/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

@
sequential_27/conv2d_108/ReluRelu)sequential_27/conv2d_108/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

@u
$sequential_27/up_sampling2d_53/ConstConst*
_output_shapes
:*
dtype0*
valueB"
   
   w
&sequential_27/up_sampling2d_53/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      ®
"sequential_27/up_sampling2d_53/mulMul-sequential_27/up_sampling2d_53/Const:output:0/sequential_27/up_sampling2d_53/Const_1:output:0*
T0*
_output_shapes
:ý
;sequential_27/up_sampling2d_53/resize/ResizeNearestNeighborResizeNearestNeighbor+sequential_27/conv2d_108/Relu:activations:0&sequential_27/up_sampling2d_53/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
half_pixel_centers(®
.sequential_27/conv2d_109/Conv2D/ReadVariableOpReadVariableOp7sequential_27_conv2d_109_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0
sequential_27/conv2d_109/Conv2DConv2DLsequential_27/up_sampling2d_53/resize/ResizeNearestNeighbor:resized_images:06sequential_27/conv2d_109/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
paddingSAME*
strides
¤
/sequential_27/conv2d_109/BiasAdd/ReadVariableOpReadVariableOp8sequential_27_conv2d_109_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0È
 sequential_27/conv2d_109/BiasAddBiasAdd(sequential_27/conv2d_109/Conv2D:output:07sequential_27/conv2d_109/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
sequential_27/conv2d_109/ReluRelu)sequential_27/conv2d_109/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ u
$sequential_27/up_sampling2d_54/ConstConst*
_output_shapes
:*
dtype0*
valueB"      w
&sequential_27/up_sampling2d_54/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      ®
"sequential_27/up_sampling2d_54/mulMul-sequential_27/up_sampling2d_54/Const:output:0/sequential_27/up_sampling2d_54/Const_1:output:0*
T0*
_output_shapes
:ý
;sequential_27/up_sampling2d_54/resize/ResizeNearestNeighborResizeNearestNeighbor+sequential_27/conv2d_109/Relu:activations:0&sequential_27/up_sampling2d_54/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(( *
half_pixel_centers(®
.sequential_27/conv2d_110/Conv2D/ReadVariableOpReadVariableOp7sequential_27_conv2d_110_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
sequential_27/conv2d_110/Conv2DConv2DLsequential_27/up_sampling2d_54/resize/ResizeNearestNeighbor:resized_images:06sequential_27/conv2d_110/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((*
paddingSAME*
strides
¤
/sequential_27/conv2d_110/BiasAdd/ReadVariableOpReadVariableOp8sequential_27_conv2d_110_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0È
 sequential_27/conv2d_110/BiasAddBiasAdd(sequential_27/conv2d_110/Conv2D:output:07sequential_27/conv2d_110/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((
sequential_27/conv2d_110/ReluRelu)sequential_27/conv2d_110/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((u
$sequential_27/up_sampling2d_55/ConstConst*
_output_shapes
:*
dtype0*
valueB"(   (   w
&sequential_27/up_sampling2d_55/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      ®
"sequential_27/up_sampling2d_55/mulMul-sequential_27/up_sampling2d_55/Const:output:0/sequential_27/up_sampling2d_55/Const_1:output:0*
T0*
_output_shapes
:ý
;sequential_27/up_sampling2d_55/resize/ResizeNearestNeighborResizeNearestNeighbor+sequential_27/conv2d_110/Relu:activations:0&sequential_27/up_sampling2d_55/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP*
half_pixel_centers(®
.sequential_27/conv2d_111/Conv2D/ReadVariableOpReadVariableOp7sequential_27_conv2d_111_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
sequential_27/conv2d_111/Conv2DConv2DLsequential_27/up_sampling2d_55/resize/ResizeNearestNeighbor:resized_images:06sequential_27/conv2d_111/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP*
paddingSAME*
strides
¤
/sequential_27/conv2d_111/BiasAdd/ReadVariableOpReadVariableOp8sequential_27_conv2d_111_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0È
 sequential_27/conv2d_111/BiasAddBiasAdd(sequential_27/conv2d_111/Conv2D:output:07sequential_27/conv2d_111/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP
 sequential_27/conv2d_111/SigmoidSigmoid)sequential_27/conv2d_111/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP{
IdentityIdentity$sequential_27/conv2d_111/Sigmoid:y:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPPÒ
NoOpNoOp0^sequential_27/conv2d_108/BiasAdd/ReadVariableOp/^sequential_27/conv2d_108/Conv2D/ReadVariableOp0^sequential_27/conv2d_109/BiasAdd/ReadVariableOp/^sequential_27/conv2d_109/Conv2D/ReadVariableOp0^sequential_27/conv2d_110/BiasAdd/ReadVariableOp/^sequential_27/conv2d_110/Conv2D/ReadVariableOp0^sequential_27/conv2d_111/BiasAdd/ReadVariableOp/^sequential_27/conv2d_111/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ@: : : : : : : : 2b
/sequential_27/conv2d_108/BiasAdd/ReadVariableOp/sequential_27/conv2d_108/BiasAdd/ReadVariableOp2`
.sequential_27/conv2d_108/Conv2D/ReadVariableOp.sequential_27/conv2d_108/Conv2D/ReadVariableOp2b
/sequential_27/conv2d_109/BiasAdd/ReadVariableOp/sequential_27/conv2d_109/BiasAdd/ReadVariableOp2`
.sequential_27/conv2d_109/Conv2D/ReadVariableOp.sequential_27/conv2d_109/Conv2D/ReadVariableOp2b
/sequential_27/conv2d_110/BiasAdd/ReadVariableOp/sequential_27/conv2d_110/BiasAdd/ReadVariableOp2`
.sequential_27/conv2d_110/Conv2D/ReadVariableOp.sequential_27/conv2d_110/Conv2D/ReadVariableOp2b
/sequential_27/conv2d_111/BiasAdd/ReadVariableOp/sequential_27/conv2d_111/BiasAdd/ReadVariableOp2`
.sequential_27/conv2d_111/Conv2D/ReadVariableOp.sequential_27/conv2d_111/Conv2D/ReadVariableOp:R N
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@

_user_specified_namez
§

æ
-__inference_sequential_26_layer_call_fn_99268
conv2d_104_input!
unknown:	
	unknown_0:	#
	unknown_1:	
	unknown_2:#
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
identity¢StatefulPartitionedCallÀ
StatefulPartitionedCallStatefulPartitionedCallconv2d_104_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_26_layer_call_and_return_conditional_losses_99228w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿPP: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP
*
_user_specified_nameconv2d_104_input
ü	
l
@__inference_kl_9_layer_call_and_return_conditional_losses_101356
inputs_0
inputs_1
identityM
SquareSquareinputs_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿS
subSubinputs_1
Square:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿG
ExpExpinputs_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
sub_1Subsub:z:0Exp:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿJ
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Z
addAddV2	sub_1:z:0add/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
ConstConst*
_output_shapes
:*
dtype0*
valueB"       F
MeanMeanadd:z:0Const:output:0*
T0*
_output_shapes
: J
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL½J
mulMulmul/x:output:0Mean:output:0*
T0*
_output_shapes
: >
IdentityIdentitymul:z:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:R N
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/1
Í

*__inference_z_log_var_layer_call_fn_101116

inputs
unknown:
À
	unknown_0:	
identity¢StatefulPartitionedCallÝ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_z_log_var_layer_call_and_return_conditional_losses_99769p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿÀ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 
_user_specified_nameinputs
ñ
ÿ
F__inference_conv2d_111_layer_call_and_return_conditional_losses_101839

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0«
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿp
SigmoidSigmoidBiasAdd:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿt
IdentityIdentitySigmoid:y:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¯

Ý
.__inference_sequential_27_layer_call_fn_101515

inputs!
unknown:@@
	unknown_0:@#
	unknown_1:@ 
	unknown_2: #
	unknown_3: 
	unknown_4:#
	unknown_5:
	unknown_6:
identity¢StatefulPartitionedCallÈ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_27_layer_call_and_return_conditional_losses_99582
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ@: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
H
Õ
C__inference_decoder_layer_call_and_return_conditional_losses_101335
zQ
7sequential_27_conv2d_108_conv2d_readvariableop_resource:@@F
8sequential_27_conv2d_108_biasadd_readvariableop_resource:@Q
7sequential_27_conv2d_109_conv2d_readvariableop_resource:@ F
8sequential_27_conv2d_109_biasadd_readvariableop_resource: Q
7sequential_27_conv2d_110_conv2d_readvariableop_resource: F
8sequential_27_conv2d_110_biasadd_readvariableop_resource:Q
7sequential_27_conv2d_111_conv2d_readvariableop_resource:F
8sequential_27_conv2d_111_biasadd_readvariableop_resource:
identity¢/sequential_27/conv2d_108/BiasAdd/ReadVariableOp¢.sequential_27/conv2d_108/Conv2D/ReadVariableOp¢/sequential_27/conv2d_109/BiasAdd/ReadVariableOp¢.sequential_27/conv2d_109/Conv2D/ReadVariableOp¢/sequential_27/conv2d_110/BiasAdd/ReadVariableOp¢.sequential_27/conv2d_110/Conv2D/ReadVariableOp¢/sequential_27/conv2d_111/BiasAdd/ReadVariableOp¢.sequential_27/conv2d_111/Conv2D/ReadVariableOpu
$sequential_27/up_sampling2d_52/ConstConst*
_output_shapes
:*
dtype0*
valueB"      w
&sequential_27/up_sampling2d_52/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      ®
"sequential_27/up_sampling2d_52/mulMul-sequential_27/up_sampling2d_52/Const:output:0/sequential_27/up_sampling2d_52/Const_1:output:0*
T0*
_output_shapes
:Ó
;sequential_27/up_sampling2d_52/resize/ResizeNearestNeighborResizeNearestNeighborz&sequential_27/up_sampling2d_52/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

@*
half_pixel_centers(®
.sequential_27/conv2d_108/Conv2D/ReadVariableOpReadVariableOp7sequential_27_conv2d_108_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
sequential_27/conv2d_108/Conv2DConv2DLsequential_27/up_sampling2d_52/resize/ResizeNearestNeighbor:resized_images:06sequential_27/conv2d_108/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

@*
paddingSAME*
strides
¤
/sequential_27/conv2d_108/BiasAdd/ReadVariableOpReadVariableOp8sequential_27_conv2d_108_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0È
 sequential_27/conv2d_108/BiasAddBiasAdd(sequential_27/conv2d_108/Conv2D:output:07sequential_27/conv2d_108/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

@
sequential_27/conv2d_108/ReluRelu)sequential_27/conv2d_108/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

@u
$sequential_27/up_sampling2d_53/ConstConst*
_output_shapes
:*
dtype0*
valueB"
   
   w
&sequential_27/up_sampling2d_53/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      ®
"sequential_27/up_sampling2d_53/mulMul-sequential_27/up_sampling2d_53/Const:output:0/sequential_27/up_sampling2d_53/Const_1:output:0*
T0*
_output_shapes
:ý
;sequential_27/up_sampling2d_53/resize/ResizeNearestNeighborResizeNearestNeighbor+sequential_27/conv2d_108/Relu:activations:0&sequential_27/up_sampling2d_53/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
half_pixel_centers(®
.sequential_27/conv2d_109/Conv2D/ReadVariableOpReadVariableOp7sequential_27_conv2d_109_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0
sequential_27/conv2d_109/Conv2DConv2DLsequential_27/up_sampling2d_53/resize/ResizeNearestNeighbor:resized_images:06sequential_27/conv2d_109/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
paddingSAME*
strides
¤
/sequential_27/conv2d_109/BiasAdd/ReadVariableOpReadVariableOp8sequential_27_conv2d_109_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0È
 sequential_27/conv2d_109/BiasAddBiasAdd(sequential_27/conv2d_109/Conv2D:output:07sequential_27/conv2d_109/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
sequential_27/conv2d_109/ReluRelu)sequential_27/conv2d_109/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ u
$sequential_27/up_sampling2d_54/ConstConst*
_output_shapes
:*
dtype0*
valueB"      w
&sequential_27/up_sampling2d_54/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      ®
"sequential_27/up_sampling2d_54/mulMul-sequential_27/up_sampling2d_54/Const:output:0/sequential_27/up_sampling2d_54/Const_1:output:0*
T0*
_output_shapes
:ý
;sequential_27/up_sampling2d_54/resize/ResizeNearestNeighborResizeNearestNeighbor+sequential_27/conv2d_109/Relu:activations:0&sequential_27/up_sampling2d_54/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(( *
half_pixel_centers(®
.sequential_27/conv2d_110/Conv2D/ReadVariableOpReadVariableOp7sequential_27_conv2d_110_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
sequential_27/conv2d_110/Conv2DConv2DLsequential_27/up_sampling2d_54/resize/ResizeNearestNeighbor:resized_images:06sequential_27/conv2d_110/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((*
paddingSAME*
strides
¤
/sequential_27/conv2d_110/BiasAdd/ReadVariableOpReadVariableOp8sequential_27_conv2d_110_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0È
 sequential_27/conv2d_110/BiasAddBiasAdd(sequential_27/conv2d_110/Conv2D:output:07sequential_27/conv2d_110/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((
sequential_27/conv2d_110/ReluRelu)sequential_27/conv2d_110/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((u
$sequential_27/up_sampling2d_55/ConstConst*
_output_shapes
:*
dtype0*
valueB"(   (   w
&sequential_27/up_sampling2d_55/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      ®
"sequential_27/up_sampling2d_55/mulMul-sequential_27/up_sampling2d_55/Const:output:0/sequential_27/up_sampling2d_55/Const_1:output:0*
T0*
_output_shapes
:ý
;sequential_27/up_sampling2d_55/resize/ResizeNearestNeighborResizeNearestNeighbor+sequential_27/conv2d_110/Relu:activations:0&sequential_27/up_sampling2d_55/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP*
half_pixel_centers(®
.sequential_27/conv2d_111/Conv2D/ReadVariableOpReadVariableOp7sequential_27_conv2d_111_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
sequential_27/conv2d_111/Conv2DConv2DLsequential_27/up_sampling2d_55/resize/ResizeNearestNeighbor:resized_images:06sequential_27/conv2d_111/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP*
paddingSAME*
strides
¤
/sequential_27/conv2d_111/BiasAdd/ReadVariableOpReadVariableOp8sequential_27_conv2d_111_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0È
 sequential_27/conv2d_111/BiasAddBiasAdd(sequential_27/conv2d_111/Conv2D:output:07sequential_27/conv2d_111/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP
 sequential_27/conv2d_111/SigmoidSigmoid)sequential_27/conv2d_111/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP{
IdentityIdentity$sequential_27/conv2d_111/Sigmoid:y:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPPÒ
NoOpNoOp0^sequential_27/conv2d_108/BiasAdd/ReadVariableOp/^sequential_27/conv2d_108/Conv2D/ReadVariableOp0^sequential_27/conv2d_109/BiasAdd/ReadVariableOp/^sequential_27/conv2d_109/Conv2D/ReadVariableOp0^sequential_27/conv2d_110/BiasAdd/ReadVariableOp/^sequential_27/conv2d_110/Conv2D/ReadVariableOp0^sequential_27/conv2d_111/BiasAdd/ReadVariableOp/^sequential_27/conv2d_111/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ@: : : : : : : : 2b
/sequential_27/conv2d_108/BiasAdd/ReadVariableOp/sequential_27/conv2d_108/BiasAdd/ReadVariableOp2`
.sequential_27/conv2d_108/Conv2D/ReadVariableOp.sequential_27/conv2d_108/Conv2D/ReadVariableOp2b
/sequential_27/conv2d_109/BiasAdd/ReadVariableOp/sequential_27/conv2d_109/BiasAdd/ReadVariableOp2`
.sequential_27/conv2d_109/Conv2D/ReadVariableOp.sequential_27/conv2d_109/Conv2D/ReadVariableOp2b
/sequential_27/conv2d_110/BiasAdd/ReadVariableOp/sequential_27/conv2d_110/BiasAdd/ReadVariableOp2`
.sequential_27/conv2d_110/Conv2D/ReadVariableOp.sequential_27/conv2d_110/Conv2D/ReadVariableOp2b
/sequential_27/conv2d_111/BiasAdd/ReadVariableOp/sequential_27/conv2d_111/BiasAdd/ReadVariableOp2`
.sequential_27/conv2d_111/Conv2D/ReadVariableOp.sequential_27/conv2d_111/Conv2D/ReadVariableOp:R N
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@

_user_specified_namez
;

I__inference_sequential_27_layer_call_and_return_conditional_losses_101563

inputsC
)conv2d_108_conv2d_readvariableop_resource:@@8
*conv2d_108_biasadd_readvariableop_resource:@C
)conv2d_109_conv2d_readvariableop_resource:@ 8
*conv2d_109_biasadd_readvariableop_resource: C
)conv2d_110_conv2d_readvariableop_resource: 8
*conv2d_110_biasadd_readvariableop_resource:C
)conv2d_111_conv2d_readvariableop_resource:8
*conv2d_111_biasadd_readvariableop_resource:
identity¢!conv2d_108/BiasAdd/ReadVariableOp¢ conv2d_108/Conv2D/ReadVariableOp¢!conv2d_109/BiasAdd/ReadVariableOp¢ conv2d_109/Conv2D/ReadVariableOp¢!conv2d_110/BiasAdd/ReadVariableOp¢ conv2d_110/Conv2D/ReadVariableOp¢!conv2d_111/BiasAdd/ReadVariableOp¢ conv2d_111/Conv2D/ReadVariableOpg
up_sampling2d_52/ConstConst*
_output_shapes
:*
dtype0*
valueB"      i
up_sampling2d_52/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      
up_sampling2d_52/mulMulup_sampling2d_52/Const:output:0!up_sampling2d_52/Const_1:output:0*
T0*
_output_shapes
:¼
-up_sampling2d_52/resize/ResizeNearestNeighborResizeNearestNeighborinputsup_sampling2d_52/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

@*
half_pixel_centers(
 conv2d_108/Conv2D/ReadVariableOpReadVariableOp)conv2d_108_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0ç
conv2d_108/Conv2DConv2D>up_sampling2d_52/resize/ResizeNearestNeighbor:resized_images:0(conv2d_108/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

@*
paddingSAME*
strides

!conv2d_108/BiasAdd/ReadVariableOpReadVariableOp*conv2d_108_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_108/BiasAddBiasAddconv2d_108/Conv2D:output:0)conv2d_108/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

@n
conv2d_108/ReluReluconv2d_108/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

@g
up_sampling2d_53/ConstConst*
_output_shapes
:*
dtype0*
valueB"
   
   i
up_sampling2d_53/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      
up_sampling2d_53/mulMulup_sampling2d_53/Const:output:0!up_sampling2d_53/Const_1:output:0*
T0*
_output_shapes
:Ó
-up_sampling2d_53/resize/ResizeNearestNeighborResizeNearestNeighborconv2d_108/Relu:activations:0up_sampling2d_53/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
half_pixel_centers(
 conv2d_109/Conv2D/ReadVariableOpReadVariableOp)conv2d_109_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0ç
conv2d_109/Conv2DConv2D>up_sampling2d_53/resize/ResizeNearestNeighbor:resized_images:0(conv2d_109/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
paddingSAME*
strides

!conv2d_109/BiasAdd/ReadVariableOpReadVariableOp*conv2d_109_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_109/BiasAddBiasAddconv2d_109/Conv2D:output:0)conv2d_109/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ n
conv2d_109/ReluReluconv2d_109/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ g
up_sampling2d_54/ConstConst*
_output_shapes
:*
dtype0*
valueB"      i
up_sampling2d_54/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      
up_sampling2d_54/mulMulup_sampling2d_54/Const:output:0!up_sampling2d_54/Const_1:output:0*
T0*
_output_shapes
:Ó
-up_sampling2d_54/resize/ResizeNearestNeighborResizeNearestNeighborconv2d_109/Relu:activations:0up_sampling2d_54/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(( *
half_pixel_centers(
 conv2d_110/Conv2D/ReadVariableOpReadVariableOp)conv2d_110_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0ç
conv2d_110/Conv2DConv2D>up_sampling2d_54/resize/ResizeNearestNeighbor:resized_images:0(conv2d_110/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((*
paddingSAME*
strides

!conv2d_110/BiasAdd/ReadVariableOpReadVariableOp*conv2d_110_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_110/BiasAddBiasAddconv2d_110/Conv2D:output:0)conv2d_110/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((n
conv2d_110/ReluReluconv2d_110/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((g
up_sampling2d_55/ConstConst*
_output_shapes
:*
dtype0*
valueB"(   (   i
up_sampling2d_55/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      
up_sampling2d_55/mulMulup_sampling2d_55/Const:output:0!up_sampling2d_55/Const_1:output:0*
T0*
_output_shapes
:Ó
-up_sampling2d_55/resize/ResizeNearestNeighborResizeNearestNeighborconv2d_110/Relu:activations:0up_sampling2d_55/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP*
half_pixel_centers(
 conv2d_111/Conv2D/ReadVariableOpReadVariableOp)conv2d_111_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0ç
conv2d_111/Conv2DConv2D>up_sampling2d_55/resize/ResizeNearestNeighbor:resized_images:0(conv2d_111/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP*
paddingSAME*
strides

!conv2d_111/BiasAdd/ReadVariableOpReadVariableOp*conv2d_111_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_111/BiasAddBiasAddconv2d_111/Conv2D:output:0)conv2d_111/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPPt
conv2d_111/SigmoidSigmoidconv2d_111/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPPm
IdentityIdentityconv2d_111/Sigmoid:y:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPPâ
NoOpNoOp"^conv2d_108/BiasAdd/ReadVariableOp!^conv2d_108/Conv2D/ReadVariableOp"^conv2d_109/BiasAdd/ReadVariableOp!^conv2d_109/Conv2D/ReadVariableOp"^conv2d_110/BiasAdd/ReadVariableOp!^conv2d_110/Conv2D/ReadVariableOp"^conv2d_111/BiasAdd/ReadVariableOp!^conv2d_111/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ@: : : : : : : : 2F
!conv2d_108/BiasAdd/ReadVariableOp!conv2d_108/BiasAdd/ReadVariableOp2D
 conv2d_108/Conv2D/ReadVariableOp conv2d_108/Conv2D/ReadVariableOp2F
!conv2d_109/BiasAdd/ReadVariableOp!conv2d_109/BiasAdd/ReadVariableOp2D
 conv2d_109/Conv2D/ReadVariableOp conv2d_109/Conv2D/ReadVariableOp2F
!conv2d_110/BiasAdd/ReadVariableOp!conv2d_110/BiasAdd/ReadVariableOp2D
 conv2d_110/Conv2D/ReadVariableOp conv2d_110/Conv2D/ReadVariableOp2F
!conv2d_111/BiasAdd/ReadVariableOp!conv2d_111/BiasAdd/ReadVariableOp2D
 conv2d_111/Conv2D/ReadVariableOp conv2d_111/Conv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs

g
K__inference_up_sampling2d_55_layer_call_and_return_conditional_losses_99389

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:½
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:µ
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¼
M
1__inference_up_sampling2d_52_layer_call_fn_101696

inputs
identityÜ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_52_layer_call_and_return_conditional_losses_99332
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ñ
þ
E__inference_conv2d_110_layer_call_and_return_conditional_losses_99447

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0«
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿj
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs


$__inference_VAE_layer_call_fn_100416
input_39!
unknown:	
	unknown_0:	#
	unknown_1:	
	unknown_2:#
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:
À
	unknown_8:	
	unknown_9:
À

unknown_10:	

unknown_11:
À

unknown_12:	À$

unknown_13:@@

unknown_14:@$

unknown_15:@ 

unknown_16: $

unknown_17: 

unknown_18:$

unknown_19:

unknown_20:
identity¢StatefulPartitionedCalló
StatefulPartitionedCallStatefulPartitionedCallinput_39unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP: *8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_VAE_layer_call_and_return_conditional_losses_100318w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:ÿÿÿÿÿÿÿÿÿPP: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP
"
_user_specified_name
input_39
µ
G
+__inference_reshape_13_layer_call_fn_101183

inputs
identity»
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_reshape_13_layer_call_and_return_conditional_losses_99834h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿÀ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 
_user_specified_nameinputs

h
L__inference_up_sampling2d_55_layer_call_and_return_conditional_losses_101819

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:½
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:µ
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ÿ
F__inference_conv2d_107_layer_call_and_return_conditional_losses_101691

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ

 : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
 
_user_specified_nameinputs
Ç
a
E__inference_flatten_13_layer_call_and_return_conditional_losses_99741

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
2
Ù
B__inference_encoder_layer_call_and_return_conditional_losses_99717

inputsQ
7sequential_26_conv2d_104_conv2d_readvariableop_resource:	F
8sequential_26_conv2d_104_biasadd_readvariableop_resource:	Q
7sequential_26_conv2d_105_conv2d_readvariableop_resource:	F
8sequential_26_conv2d_105_biasadd_readvariableop_resource:Q
7sequential_26_conv2d_106_conv2d_readvariableop_resource: F
8sequential_26_conv2d_106_biasadd_readvariableop_resource: Q
7sequential_26_conv2d_107_conv2d_readvariableop_resource: @F
8sequential_26_conv2d_107_biasadd_readvariableop_resource:@
identity¢/sequential_26/conv2d_104/BiasAdd/ReadVariableOp¢.sequential_26/conv2d_104/Conv2D/ReadVariableOp¢/sequential_26/conv2d_105/BiasAdd/ReadVariableOp¢.sequential_26/conv2d_105/Conv2D/ReadVariableOp¢/sequential_26/conv2d_106/BiasAdd/ReadVariableOp¢.sequential_26/conv2d_106/Conv2D/ReadVariableOp¢/sequential_26/conv2d_107/BiasAdd/ReadVariableOp¢.sequential_26/conv2d_107/Conv2D/ReadVariableOp®
.sequential_26/conv2d_104/Conv2D/ReadVariableOpReadVariableOp7sequential_26_conv2d_104_conv2d_readvariableop_resource*&
_output_shapes
:	*
dtype0Ë
sequential_26/conv2d_104/Conv2DConv2Dinputs6sequential_26/conv2d_104/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	*
paddingSAME*
strides
¤
/sequential_26/conv2d_104/BiasAdd/ReadVariableOpReadVariableOp8sequential_26_conv2d_104_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0È
 sequential_26/conv2d_104/BiasAddBiasAdd(sequential_26/conv2d_104/Conv2D:output:07sequential_26/conv2d_104/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	
sequential_26/conv2d_104/ReluRelu)sequential_26/conv2d_104/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	®
.sequential_26/conv2d_105/Conv2D/ReadVariableOpReadVariableOp7sequential_26_conv2d_105_conv2d_readvariableop_resource*&
_output_shapes
:	*
dtype0ð
sequential_26/conv2d_105/Conv2DConv2D+sequential_26/conv2d_104/Relu:activations:06sequential_26/conv2d_105/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
¤
/sequential_26/conv2d_105/BiasAdd/ReadVariableOpReadVariableOp8sequential_26_conv2d_105_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0È
 sequential_26/conv2d_105/BiasAddBiasAdd(sequential_26/conv2d_105/Conv2D:output:07sequential_26/conv2d_105/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
sequential_26/conv2d_105/ReluRelu)sequential_26/conv2d_105/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
.sequential_26/conv2d_106/Conv2D/ReadVariableOpReadVariableOp7sequential_26_conv2d_106_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0ð
sequential_26/conv2d_106/Conv2DConv2D+sequential_26/conv2d_105/Relu:activations:06sequential_26/conv2d_106/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 *
paddingSAME*
strides
¤
/sequential_26/conv2d_106/BiasAdd/ReadVariableOpReadVariableOp8sequential_26_conv2d_106_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0È
 sequential_26/conv2d_106/BiasAddBiasAdd(sequential_26/conv2d_106/Conv2D:output:07sequential_26/conv2d_106/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
sequential_26/conv2d_106/ReluRelu)sequential_26/conv2d_106/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 ®
.sequential_26/conv2d_107/Conv2D/ReadVariableOpReadVariableOp7sequential_26_conv2d_107_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0ð
sequential_26/conv2d_107/Conv2DConv2D+sequential_26/conv2d_106/Relu:activations:06sequential_26/conv2d_107/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
¤
/sequential_26/conv2d_107/BiasAdd/ReadVariableOpReadVariableOp8sequential_26_conv2d_107_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0È
 sequential_26/conv2d_107/BiasAddBiasAdd(sequential_26/conv2d_107/Conv2D:output:07sequential_26/conv2d_107/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
sequential_26/conv2d_107/ReluRelu)sequential_26/conv2d_107/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
IdentityIdentity+sequential_26/conv2d_107/Relu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ò
NoOpNoOp0^sequential_26/conv2d_104/BiasAdd/ReadVariableOp/^sequential_26/conv2d_104/Conv2D/ReadVariableOp0^sequential_26/conv2d_105/BiasAdd/ReadVariableOp/^sequential_26/conv2d_105/Conv2D/ReadVariableOp0^sequential_26/conv2d_106/BiasAdd/ReadVariableOp/^sequential_26/conv2d_106/Conv2D/ReadVariableOp0^sequential_26/conv2d_107/BiasAdd/ReadVariableOp/^sequential_26/conv2d_107/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿPP: : : : : : : : 2b
/sequential_26/conv2d_104/BiasAdd/ReadVariableOp/sequential_26/conv2d_104/BiasAdd/ReadVariableOp2`
.sequential_26/conv2d_104/Conv2D/ReadVariableOp.sequential_26/conv2d_104/Conv2D/ReadVariableOp2b
/sequential_26/conv2d_105/BiasAdd/ReadVariableOp/sequential_26/conv2d_105/BiasAdd/ReadVariableOp2`
.sequential_26/conv2d_105/Conv2D/ReadVariableOp.sequential_26/conv2d_105/Conv2D/ReadVariableOp2b
/sequential_26/conv2d_106/BiasAdd/ReadVariableOp/sequential_26/conv2d_106/BiasAdd/ReadVariableOp2`
.sequential_26/conv2d_106/Conv2D/ReadVariableOp.sequential_26/conv2d_106/Conv2D/ReadVariableOp2b
/sequential_26/conv2d_107/BiasAdd/ReadVariableOp/sequential_26/conv2d_107/BiasAdd/ReadVariableOp2`
.sequential_26/conv2d_107/Conv2D/ReadVariableOp.sequential_26/conv2d_107/Conv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP
 
_user_specified_nameinputs
´

Þ
-__inference_sequential_27_layer_call_fn_99491
input_40!
unknown:@@
	unknown_0:@#
	unknown_1:@ 
	unknown_2: #
	unknown_3: 
	unknown_4:#
	unknown_5:
	unknown_6:
identity¢StatefulPartitionedCallÊ
StatefulPartitionedCallStatefulPartitionedCallinput_40unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_27_layer_call_and_return_conditional_losses_99472
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ@: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
input_40
ÇÅ

?__inference_VAE_layer_call_and_return_conditional_losses_100920

inputsY
?encoder_sequential_26_conv2d_104_conv2d_readvariableop_resource:	N
@encoder_sequential_26_conv2d_104_biasadd_readvariableop_resource:	Y
?encoder_sequential_26_conv2d_105_conv2d_readvariableop_resource:	N
@encoder_sequential_26_conv2d_105_biasadd_readvariableop_resource:Y
?encoder_sequential_26_conv2d_106_conv2d_readvariableop_resource: N
@encoder_sequential_26_conv2d_106_biasadd_readvariableop_resource: Y
?encoder_sequential_26_conv2d_107_conv2d_readvariableop_resource: @N
@encoder_sequential_26_conv2d_107_biasadd_readvariableop_resource:@9
%z_mean_matmul_readvariableop_resource:
À5
&z_mean_biasadd_readvariableop_resource:	<
(z_log_var_matmul_readvariableop_resource:
À8
)z_log_var_biasadd_readvariableop_resource:	;
'dense_17_matmul_readvariableop_resource:
À7
(dense_17_biasadd_readvariableop_resource:	ÀY
?decoder_sequential_27_conv2d_108_conv2d_readvariableop_resource:@@N
@decoder_sequential_27_conv2d_108_biasadd_readvariableop_resource:@Y
?decoder_sequential_27_conv2d_109_conv2d_readvariableop_resource:@ N
@decoder_sequential_27_conv2d_109_biasadd_readvariableop_resource: Y
?decoder_sequential_27_conv2d_110_conv2d_readvariableop_resource: N
@decoder_sequential_27_conv2d_110_biasadd_readvariableop_resource:Y
?decoder_sequential_27_conv2d_111_conv2d_readvariableop_resource:N
@decoder_sequential_27_conv2d_111_biasadd_readvariableop_resource:
identity

identity_1¢7decoder/sequential_27/conv2d_108/BiasAdd/ReadVariableOp¢6decoder/sequential_27/conv2d_108/Conv2D/ReadVariableOp¢7decoder/sequential_27/conv2d_109/BiasAdd/ReadVariableOp¢6decoder/sequential_27/conv2d_109/Conv2D/ReadVariableOp¢7decoder/sequential_27/conv2d_110/BiasAdd/ReadVariableOp¢6decoder/sequential_27/conv2d_110/Conv2D/ReadVariableOp¢7decoder/sequential_27/conv2d_111/BiasAdd/ReadVariableOp¢6decoder/sequential_27/conv2d_111/Conv2D/ReadVariableOp¢dense_17/BiasAdd/ReadVariableOp¢dense_17/MatMul/ReadVariableOp¢7encoder/sequential_26/conv2d_104/BiasAdd/ReadVariableOp¢6encoder/sequential_26/conv2d_104/Conv2D/ReadVariableOp¢7encoder/sequential_26/conv2d_105/BiasAdd/ReadVariableOp¢6encoder/sequential_26/conv2d_105/Conv2D/ReadVariableOp¢7encoder/sequential_26/conv2d_106/BiasAdd/ReadVariableOp¢6encoder/sequential_26/conv2d_106/Conv2D/ReadVariableOp¢7encoder/sequential_26/conv2d_107/BiasAdd/ReadVariableOp¢6encoder/sequential_26/conv2d_107/Conv2D/ReadVariableOp¢ z_log_var/BiasAdd/ReadVariableOp¢z_log_var/MatMul/ReadVariableOp¢z_mean/BiasAdd/ReadVariableOp¢z_mean/MatMul/ReadVariableOp¾
6encoder/sequential_26/conv2d_104/Conv2D/ReadVariableOpReadVariableOp?encoder_sequential_26_conv2d_104_conv2d_readvariableop_resource*&
_output_shapes
:	*
dtype0Û
'encoder/sequential_26/conv2d_104/Conv2DConv2Dinputs>encoder/sequential_26/conv2d_104/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	*
paddingSAME*
strides
´
7encoder/sequential_26/conv2d_104/BiasAdd/ReadVariableOpReadVariableOp@encoder_sequential_26_conv2d_104_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0à
(encoder/sequential_26/conv2d_104/BiasAddBiasAdd0encoder/sequential_26/conv2d_104/Conv2D:output:0?encoder/sequential_26/conv2d_104/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	
%encoder/sequential_26/conv2d_104/ReluRelu1encoder/sequential_26/conv2d_104/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	¾
6encoder/sequential_26/conv2d_105/Conv2D/ReadVariableOpReadVariableOp?encoder_sequential_26_conv2d_105_conv2d_readvariableop_resource*&
_output_shapes
:	*
dtype0
'encoder/sequential_26/conv2d_105/Conv2DConv2D3encoder/sequential_26/conv2d_104/Relu:activations:0>encoder/sequential_26/conv2d_105/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
´
7encoder/sequential_26/conv2d_105/BiasAdd/ReadVariableOpReadVariableOp@encoder_sequential_26_conv2d_105_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0à
(encoder/sequential_26/conv2d_105/BiasAddBiasAdd0encoder/sequential_26/conv2d_105/Conv2D:output:0?encoder/sequential_26/conv2d_105/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%encoder/sequential_26/conv2d_105/ReluRelu1encoder/sequential_26/conv2d_105/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
6encoder/sequential_26/conv2d_106/Conv2D/ReadVariableOpReadVariableOp?encoder_sequential_26_conv2d_106_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
'encoder/sequential_26/conv2d_106/Conv2DConv2D3encoder/sequential_26/conv2d_105/Relu:activations:0>encoder/sequential_26/conv2d_106/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 *
paddingSAME*
strides
´
7encoder/sequential_26/conv2d_106/BiasAdd/ReadVariableOpReadVariableOp@encoder_sequential_26_conv2d_106_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0à
(encoder/sequential_26/conv2d_106/BiasAddBiasAdd0encoder/sequential_26/conv2d_106/Conv2D:output:0?encoder/sequential_26/conv2d_106/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
%encoder/sequential_26/conv2d_106/ReluRelu1encoder/sequential_26/conv2d_106/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 ¾
6encoder/sequential_26/conv2d_107/Conv2D/ReadVariableOpReadVariableOp?encoder_sequential_26_conv2d_107_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0
'encoder/sequential_26/conv2d_107/Conv2DConv2D3encoder/sequential_26/conv2d_106/Relu:activations:0>encoder/sequential_26/conv2d_107/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
´
7encoder/sequential_26/conv2d_107/BiasAdd/ReadVariableOpReadVariableOp@encoder_sequential_26_conv2d_107_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0à
(encoder/sequential_26/conv2d_107/BiasAddBiasAdd0encoder/sequential_26/conv2d_107/Conv2D:output:0?encoder/sequential_26/conv2d_107/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
%encoder/sequential_26/conv2d_107/ReluRelu1encoder/sequential_26/conv2d_107/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@a
flatten_13/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   
flatten_13/ReshapeReshape3encoder/sequential_26/conv2d_107/Relu:activations:0flatten_13/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
z_mean/MatMul/ReadVariableOpReadVariableOp%z_mean_matmul_readvariableop_resource* 
_output_shapes
:
À*
dtype0
z_mean/MatMulMatMulflatten_13/Reshape:output:0$z_mean/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
z_mean/BiasAdd/ReadVariableOpReadVariableOp&z_mean_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
z_mean/BiasAddBiasAddz_mean/MatMul:product:0%z_mean/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
z_log_var/MatMul/ReadVariableOpReadVariableOp(z_log_var_matmul_readvariableop_resource* 
_output_shapes
:
À*
dtype0
z_log_var/MatMulMatMulflatten_13/Reshape:output:0'z_log_var/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 z_log_var/BiasAdd/ReadVariableOpReadVariableOp)z_log_var_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
z_log_var/BiasAddBiasAddz_log_var/MatMul:product:0(z_log_var/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
sampling_9/ShapeShapez_mean/BiasAdd:output:0*
T0*
_output_shapes
:h
sampling_9/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 sampling_9/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 sampling_9/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
sampling_9/strided_sliceStridedSlicesampling_9/Shape:output:0'sampling_9/strided_slice/stack:output:0)sampling_9/strided_slice/stack_1:output:0)sampling_9/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
sampling_9/Shape_1Shapez_mean/BiasAdd:output:0*
T0*
_output_shapes
:j
 sampling_9/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:l
"sampling_9/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"sampling_9/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
sampling_9/strided_slice_1StridedSlicesampling_9/Shape_1:output:0)sampling_9/strided_slice_1/stack:output:0+sampling_9/strided_slice_1/stack_1:output:0+sampling_9/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
sampling_9/random_normal/shapePack!sampling_9/strided_slice:output:0#sampling_9/strided_slice_1:output:0*
N*
T0*
_output_shapes
:b
sampling_9/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    d
sampling_9/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?®
-sampling_9/random_normal/RandomStandardNormalRandomStandardNormal'sampling_9/random_normal/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0¸
sampling_9/random_normal/mulMul6sampling_9/random_normal/RandomStandardNormal:output:0(sampling_9/random_normal/stddev:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
sampling_9/random_normalAddV2 sampling_9/random_normal/mul:z:0&sampling_9/random_normal/mean:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
sampling_9/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
sampling_9/mulMulsampling_9/mul/x:output:0z_log_var/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
sampling_9/ExpExpsampling_9/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
sampling_9/mul_1Mulsampling_9/Exp:y:0sampling_9/random_normal:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
sampling_9/addAddV2z_mean/BiasAdd:output:0sampling_9/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_17/MatMul/ReadVariableOpReadVariableOp'dense_17_matmul_readvariableop_resource* 
_output_shapes
:
À*
dtype0
dense_17/MatMulMatMulsampling_9/add:z:0&dense_17/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
dense_17/BiasAdd/ReadVariableOpReadVariableOp(dense_17_biasadd_readvariableop_resource*
_output_shapes	
:À*
dtype0
dense_17/BiasAddBiasAdddense_17/MatMul:product:0'dense_17/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀc
dense_17/ReluReludense_17/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ[
reshape_13/ShapeShapedense_17/Relu:activations:0*
T0*
_output_shapes
:h
reshape_13/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 reshape_13/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 reshape_13/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
reshape_13/strided_sliceStridedSlicereshape_13/Shape:output:0'reshape_13/strided_slice/stack:output:0)reshape_13/strided_slice/stack_1:output:0)reshape_13/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
reshape_13/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :\
reshape_13/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :\
reshape_13/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :@à
reshape_13/Reshape/shapePack!reshape_13/strided_slice:output:0#reshape_13/Reshape/shape/1:output:0#reshape_13/Reshape/shape/2:output:0#reshape_13/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:
reshape_13/ReshapeReshapedense_17/Relu:activations:0!reshape_13/Reshape/shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@}
,decoder/sequential_27/up_sampling2d_52/ConstConst*
_output_shapes
:*
dtype0*
valueB"      
.decoder/sequential_27/up_sampling2d_52/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Æ
*decoder/sequential_27/up_sampling2d_52/mulMul5decoder/sequential_27/up_sampling2d_52/Const:output:07decoder/sequential_27/up_sampling2d_52/Const_1:output:0*
T0*
_output_shapes
:ý
Cdecoder/sequential_27/up_sampling2d_52/resize/ResizeNearestNeighborResizeNearestNeighborreshape_13/Reshape:output:0.decoder/sequential_27/up_sampling2d_52/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

@*
half_pixel_centers(¾
6decoder/sequential_27/conv2d_108/Conv2D/ReadVariableOpReadVariableOp?decoder_sequential_27_conv2d_108_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0©
'decoder/sequential_27/conv2d_108/Conv2DConv2DTdecoder/sequential_27/up_sampling2d_52/resize/ResizeNearestNeighbor:resized_images:0>decoder/sequential_27/conv2d_108/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

@*
paddingSAME*
strides
´
7decoder/sequential_27/conv2d_108/BiasAdd/ReadVariableOpReadVariableOp@decoder_sequential_27_conv2d_108_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0à
(decoder/sequential_27/conv2d_108/BiasAddBiasAdd0decoder/sequential_27/conv2d_108/Conv2D:output:0?decoder/sequential_27/conv2d_108/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

@
%decoder/sequential_27/conv2d_108/ReluRelu1decoder/sequential_27/conv2d_108/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

@}
,decoder/sequential_27/up_sampling2d_53/ConstConst*
_output_shapes
:*
dtype0*
valueB"
   
   
.decoder/sequential_27/up_sampling2d_53/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Æ
*decoder/sequential_27/up_sampling2d_53/mulMul5decoder/sequential_27/up_sampling2d_53/Const:output:07decoder/sequential_27/up_sampling2d_53/Const_1:output:0*
T0*
_output_shapes
:
Cdecoder/sequential_27/up_sampling2d_53/resize/ResizeNearestNeighborResizeNearestNeighbor3decoder/sequential_27/conv2d_108/Relu:activations:0.decoder/sequential_27/up_sampling2d_53/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
half_pixel_centers(¾
6decoder/sequential_27/conv2d_109/Conv2D/ReadVariableOpReadVariableOp?decoder_sequential_27_conv2d_109_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0©
'decoder/sequential_27/conv2d_109/Conv2DConv2DTdecoder/sequential_27/up_sampling2d_53/resize/ResizeNearestNeighbor:resized_images:0>decoder/sequential_27/conv2d_109/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
paddingSAME*
strides
´
7decoder/sequential_27/conv2d_109/BiasAdd/ReadVariableOpReadVariableOp@decoder_sequential_27_conv2d_109_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0à
(decoder/sequential_27/conv2d_109/BiasAddBiasAdd0decoder/sequential_27/conv2d_109/Conv2D:output:0?decoder/sequential_27/conv2d_109/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
%decoder/sequential_27/conv2d_109/ReluRelu1decoder/sequential_27/conv2d_109/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ }
,decoder/sequential_27/up_sampling2d_54/ConstConst*
_output_shapes
:*
dtype0*
valueB"      
.decoder/sequential_27/up_sampling2d_54/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Æ
*decoder/sequential_27/up_sampling2d_54/mulMul5decoder/sequential_27/up_sampling2d_54/Const:output:07decoder/sequential_27/up_sampling2d_54/Const_1:output:0*
T0*
_output_shapes
:
Cdecoder/sequential_27/up_sampling2d_54/resize/ResizeNearestNeighborResizeNearestNeighbor3decoder/sequential_27/conv2d_109/Relu:activations:0.decoder/sequential_27/up_sampling2d_54/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(( *
half_pixel_centers(¾
6decoder/sequential_27/conv2d_110/Conv2D/ReadVariableOpReadVariableOp?decoder_sequential_27_conv2d_110_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0©
'decoder/sequential_27/conv2d_110/Conv2DConv2DTdecoder/sequential_27/up_sampling2d_54/resize/ResizeNearestNeighbor:resized_images:0>decoder/sequential_27/conv2d_110/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((*
paddingSAME*
strides
´
7decoder/sequential_27/conv2d_110/BiasAdd/ReadVariableOpReadVariableOp@decoder_sequential_27_conv2d_110_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0à
(decoder/sequential_27/conv2d_110/BiasAddBiasAdd0decoder/sequential_27/conv2d_110/Conv2D:output:0?decoder/sequential_27/conv2d_110/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((
%decoder/sequential_27/conv2d_110/ReluRelu1decoder/sequential_27/conv2d_110/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((}
,decoder/sequential_27/up_sampling2d_55/ConstConst*
_output_shapes
:*
dtype0*
valueB"(   (   
.decoder/sequential_27/up_sampling2d_55/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Æ
*decoder/sequential_27/up_sampling2d_55/mulMul5decoder/sequential_27/up_sampling2d_55/Const:output:07decoder/sequential_27/up_sampling2d_55/Const_1:output:0*
T0*
_output_shapes
:
Cdecoder/sequential_27/up_sampling2d_55/resize/ResizeNearestNeighborResizeNearestNeighbor3decoder/sequential_27/conv2d_110/Relu:activations:0.decoder/sequential_27/up_sampling2d_55/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP*
half_pixel_centers(¾
6decoder/sequential_27/conv2d_111/Conv2D/ReadVariableOpReadVariableOp?decoder_sequential_27_conv2d_111_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0©
'decoder/sequential_27/conv2d_111/Conv2DConv2DTdecoder/sequential_27/up_sampling2d_55/resize/ResizeNearestNeighbor:resized_images:0>decoder/sequential_27/conv2d_111/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP*
paddingSAME*
strides
´
7decoder/sequential_27/conv2d_111/BiasAdd/ReadVariableOpReadVariableOp@decoder_sequential_27_conv2d_111_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0à
(decoder/sequential_27/conv2d_111/BiasAddBiasAdd0decoder/sequential_27/conv2d_111/Conv2D:output:0?decoder/sequential_27/conv2d_111/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP 
(decoder/sequential_27/conv2d_111/SigmoidSigmoid1decoder/sequential_27/conv2d_111/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPPa
kl_9/SquareSquarez_mean/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿo
kl_9/subSubz_log_var/BiasAdd:output:0kl_9/Square:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
kl_9/ExpExpz_log_var/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`

kl_9/sub_1Subkl_9/sub:z:0kl_9/Exp:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿO

kl_9/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?i
kl_9/addAddV2kl_9/sub_1:z:0kl_9/add/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[

kl_9/ConstConst*
_output_shapes
:*
dtype0*
valueB"       U
	kl_9/MeanMeankl_9/add:z:0kl_9/Const:output:0*
T0*
_output_shapes
: O

kl_9/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL½Y
kl_9/mulMulkl_9/mul/x:output:0kl_9/Mean:output:0*
T0*
_output_shapes
: 
IdentityIdentity,decoder/sequential_27/conv2d_111/Sigmoid:y:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPPL

Identity_1Identitykl_9/mul:z:0^NoOp*
T0*
_output_shapes
: ¥	
NoOpNoOp8^decoder/sequential_27/conv2d_108/BiasAdd/ReadVariableOp7^decoder/sequential_27/conv2d_108/Conv2D/ReadVariableOp8^decoder/sequential_27/conv2d_109/BiasAdd/ReadVariableOp7^decoder/sequential_27/conv2d_109/Conv2D/ReadVariableOp8^decoder/sequential_27/conv2d_110/BiasAdd/ReadVariableOp7^decoder/sequential_27/conv2d_110/Conv2D/ReadVariableOp8^decoder/sequential_27/conv2d_111/BiasAdd/ReadVariableOp7^decoder/sequential_27/conv2d_111/Conv2D/ReadVariableOp ^dense_17/BiasAdd/ReadVariableOp^dense_17/MatMul/ReadVariableOp8^encoder/sequential_26/conv2d_104/BiasAdd/ReadVariableOp7^encoder/sequential_26/conv2d_104/Conv2D/ReadVariableOp8^encoder/sequential_26/conv2d_105/BiasAdd/ReadVariableOp7^encoder/sequential_26/conv2d_105/Conv2D/ReadVariableOp8^encoder/sequential_26/conv2d_106/BiasAdd/ReadVariableOp7^encoder/sequential_26/conv2d_106/Conv2D/ReadVariableOp8^encoder/sequential_26/conv2d_107/BiasAdd/ReadVariableOp7^encoder/sequential_26/conv2d_107/Conv2D/ReadVariableOp!^z_log_var/BiasAdd/ReadVariableOp ^z_log_var/MatMul/ReadVariableOp^z_mean/BiasAdd/ReadVariableOp^z_mean/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:ÿÿÿÿÿÿÿÿÿPP: : : : : : : : : : : : : : : : : : : : : : 2r
7decoder/sequential_27/conv2d_108/BiasAdd/ReadVariableOp7decoder/sequential_27/conv2d_108/BiasAdd/ReadVariableOp2p
6decoder/sequential_27/conv2d_108/Conv2D/ReadVariableOp6decoder/sequential_27/conv2d_108/Conv2D/ReadVariableOp2r
7decoder/sequential_27/conv2d_109/BiasAdd/ReadVariableOp7decoder/sequential_27/conv2d_109/BiasAdd/ReadVariableOp2p
6decoder/sequential_27/conv2d_109/Conv2D/ReadVariableOp6decoder/sequential_27/conv2d_109/Conv2D/ReadVariableOp2r
7decoder/sequential_27/conv2d_110/BiasAdd/ReadVariableOp7decoder/sequential_27/conv2d_110/BiasAdd/ReadVariableOp2p
6decoder/sequential_27/conv2d_110/Conv2D/ReadVariableOp6decoder/sequential_27/conv2d_110/Conv2D/ReadVariableOp2r
7decoder/sequential_27/conv2d_111/BiasAdd/ReadVariableOp7decoder/sequential_27/conv2d_111/BiasAdd/ReadVariableOp2p
6decoder/sequential_27/conv2d_111/Conv2D/ReadVariableOp6decoder/sequential_27/conv2d_111/Conv2D/ReadVariableOp2B
dense_17/BiasAdd/ReadVariableOpdense_17/BiasAdd/ReadVariableOp2@
dense_17/MatMul/ReadVariableOpdense_17/MatMul/ReadVariableOp2r
7encoder/sequential_26/conv2d_104/BiasAdd/ReadVariableOp7encoder/sequential_26/conv2d_104/BiasAdd/ReadVariableOp2p
6encoder/sequential_26/conv2d_104/Conv2D/ReadVariableOp6encoder/sequential_26/conv2d_104/Conv2D/ReadVariableOp2r
7encoder/sequential_26/conv2d_105/BiasAdd/ReadVariableOp7encoder/sequential_26/conv2d_105/BiasAdd/ReadVariableOp2p
6encoder/sequential_26/conv2d_105/Conv2D/ReadVariableOp6encoder/sequential_26/conv2d_105/Conv2D/ReadVariableOp2r
7encoder/sequential_26/conv2d_106/BiasAdd/ReadVariableOp7encoder/sequential_26/conv2d_106/BiasAdd/ReadVariableOp2p
6encoder/sequential_26/conv2d_106/Conv2D/ReadVariableOp6encoder/sequential_26/conv2d_106/Conv2D/ReadVariableOp2r
7encoder/sequential_26/conv2d_107/BiasAdd/ReadVariableOp7encoder/sequential_26/conv2d_107/BiasAdd/ReadVariableOp2p
6encoder/sequential_26/conv2d_107/Conv2D/ReadVariableOp6encoder/sequential_26/conv2d_107/Conv2D/ReadVariableOp2D
 z_log_var/BiasAdd/ReadVariableOp z_log_var/BiasAdd/ReadVariableOp2B
z_log_var/MatMul/ReadVariableOpz_log_var/MatMul/ReadVariableOp2>
z_mean/BiasAdd/ReadVariableOpz_mean/BiasAdd/ReadVariableOp2<
z_mean/MatMul/ReadVariableOpz_mean/MatMul/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP
 
_user_specified_nameinputs
þ	
×
(__inference_encoder_layer_call_fn_100992

inputs!
unknown:	
	unknown_0:	#
	unknown_1:	
	unknown_2:#
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
identity¢StatefulPartitionedCall°
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_encoder_layer_call_and_return_conditional_losses_99717w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿPP: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP
 
_user_specified_nameinputs
Ð	
ö
B__inference_z_mean_layer_call_and_return_conditional_losses_101107

inputs2
matmul_readvariableop_resource:
À.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
À*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿÀ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 
_user_specified_nameinputs
¹
 
+__inference_conv2d_109_layer_call_fn_101754

inputs!
unknown:@ 
	unknown_0: 
identity¢StatefulPartitionedCall÷
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_109_layer_call_and_return_conditional_losses_99429
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ÿ	
×
(__inference_encoder_layer_call_fn_101013

inputs!
unknown:	
	unknown_0:	#
	unknown_1:	
	unknown_2:#
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
identity¢StatefulPartitionedCall±
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_encoder_layer_call_and_return_conditional_losses_100187w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿPP: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP
 
_user_specified_nameinputs

þ
E__inference_conv2d_107_layer_call_and_return_conditional_losses_99115

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ

 : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
 
_user_specified_nameinputs
ð
 
+__inference_conv2d_106_layer_call_fn_101660

inputs!
unknown: 
	unknown_0: 
identity¢StatefulPartitionedCallå
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_106_layer_call_and_return_conditional_losses_99098w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
µ
G
+__inference_flatten_13_layer_call_fn_101082

inputs
identity´
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_flatten_13_layer_call_and_return_conditional_losses_99741a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ñ
þ
E__inference_conv2d_108_layer_call_and_return_conditional_losses_99411

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0«
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs

h
L__inference_up_sampling2d_52_layer_call_and_return_conditional_losses_101708

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:½
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:µ
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
þ
Q
%__inference_kl_9_layer_call_fn_101341
inputs_0
inputs_1
identity©
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_kl_9_layer_call_and_return_conditional_losses_99917O
IdentityIdentityPartitionedCall:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:R N
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/1
¯

Ý
.__inference_sequential_27_layer_call_fn_101494

inputs!
unknown:@@
	unknown_0:@#
	unknown_1:@ 
	unknown_2: #
	unknown_3: 
	unknown_4:#
	unknown_5:
	unknown_6:
identity¢StatefulPartitionedCallÈ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_27_layer_call_and_return_conditional_losses_99472
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ@: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
2
Ú
C__inference_encoder_layer_call_and_return_conditional_losses_101077

inputsQ
7sequential_26_conv2d_104_conv2d_readvariableop_resource:	F
8sequential_26_conv2d_104_biasadd_readvariableop_resource:	Q
7sequential_26_conv2d_105_conv2d_readvariableop_resource:	F
8sequential_26_conv2d_105_biasadd_readvariableop_resource:Q
7sequential_26_conv2d_106_conv2d_readvariableop_resource: F
8sequential_26_conv2d_106_biasadd_readvariableop_resource: Q
7sequential_26_conv2d_107_conv2d_readvariableop_resource: @F
8sequential_26_conv2d_107_biasadd_readvariableop_resource:@
identity¢/sequential_26/conv2d_104/BiasAdd/ReadVariableOp¢.sequential_26/conv2d_104/Conv2D/ReadVariableOp¢/sequential_26/conv2d_105/BiasAdd/ReadVariableOp¢.sequential_26/conv2d_105/Conv2D/ReadVariableOp¢/sequential_26/conv2d_106/BiasAdd/ReadVariableOp¢.sequential_26/conv2d_106/Conv2D/ReadVariableOp¢/sequential_26/conv2d_107/BiasAdd/ReadVariableOp¢.sequential_26/conv2d_107/Conv2D/ReadVariableOp®
.sequential_26/conv2d_104/Conv2D/ReadVariableOpReadVariableOp7sequential_26_conv2d_104_conv2d_readvariableop_resource*&
_output_shapes
:	*
dtype0Ë
sequential_26/conv2d_104/Conv2DConv2Dinputs6sequential_26/conv2d_104/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	*
paddingSAME*
strides
¤
/sequential_26/conv2d_104/BiasAdd/ReadVariableOpReadVariableOp8sequential_26_conv2d_104_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0È
 sequential_26/conv2d_104/BiasAddBiasAdd(sequential_26/conv2d_104/Conv2D:output:07sequential_26/conv2d_104/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	
sequential_26/conv2d_104/ReluRelu)sequential_26/conv2d_104/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	®
.sequential_26/conv2d_105/Conv2D/ReadVariableOpReadVariableOp7sequential_26_conv2d_105_conv2d_readvariableop_resource*&
_output_shapes
:	*
dtype0ð
sequential_26/conv2d_105/Conv2DConv2D+sequential_26/conv2d_104/Relu:activations:06sequential_26/conv2d_105/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
¤
/sequential_26/conv2d_105/BiasAdd/ReadVariableOpReadVariableOp8sequential_26_conv2d_105_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0È
 sequential_26/conv2d_105/BiasAddBiasAdd(sequential_26/conv2d_105/Conv2D:output:07sequential_26/conv2d_105/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
sequential_26/conv2d_105/ReluRelu)sequential_26/conv2d_105/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
.sequential_26/conv2d_106/Conv2D/ReadVariableOpReadVariableOp7sequential_26_conv2d_106_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0ð
sequential_26/conv2d_106/Conv2DConv2D+sequential_26/conv2d_105/Relu:activations:06sequential_26/conv2d_106/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 *
paddingSAME*
strides
¤
/sequential_26/conv2d_106/BiasAdd/ReadVariableOpReadVariableOp8sequential_26_conv2d_106_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0È
 sequential_26/conv2d_106/BiasAddBiasAdd(sequential_26/conv2d_106/Conv2D:output:07sequential_26/conv2d_106/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
sequential_26/conv2d_106/ReluRelu)sequential_26/conv2d_106/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 ®
.sequential_26/conv2d_107/Conv2D/ReadVariableOpReadVariableOp7sequential_26_conv2d_107_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0ð
sequential_26/conv2d_107/Conv2DConv2D+sequential_26/conv2d_106/Relu:activations:06sequential_26/conv2d_107/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
¤
/sequential_26/conv2d_107/BiasAdd/ReadVariableOpReadVariableOp8sequential_26_conv2d_107_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0È
 sequential_26/conv2d_107/BiasAddBiasAdd(sequential_26/conv2d_107/Conv2D:output:07sequential_26/conv2d_107/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
sequential_26/conv2d_107/ReluRelu)sequential_26/conv2d_107/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
IdentityIdentity+sequential_26/conv2d_107/Relu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ò
NoOpNoOp0^sequential_26/conv2d_104/BiasAdd/ReadVariableOp/^sequential_26/conv2d_104/Conv2D/ReadVariableOp0^sequential_26/conv2d_105/BiasAdd/ReadVariableOp/^sequential_26/conv2d_105/Conv2D/ReadVariableOp0^sequential_26/conv2d_106/BiasAdd/ReadVariableOp/^sequential_26/conv2d_106/Conv2D/ReadVariableOp0^sequential_26/conv2d_107/BiasAdd/ReadVariableOp/^sequential_26/conv2d_107/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿPP: : : : : : : : 2b
/sequential_26/conv2d_104/BiasAdd/ReadVariableOp/sequential_26/conv2d_104/BiasAdd/ReadVariableOp2`
.sequential_26/conv2d_104/Conv2D/ReadVariableOp.sequential_26/conv2d_104/Conv2D/ReadVariableOp2b
/sequential_26/conv2d_105/BiasAdd/ReadVariableOp/sequential_26/conv2d_105/BiasAdd/ReadVariableOp2`
.sequential_26/conv2d_105/Conv2D/ReadVariableOp.sequential_26/conv2d_105/Conv2D/ReadVariableOp2b
/sequential_26/conv2d_106/BiasAdd/ReadVariableOp/sequential_26/conv2d_106/BiasAdd/ReadVariableOp2`
.sequential_26/conv2d_106/Conv2D/ReadVariableOp.sequential_26/conv2d_106/Conv2D/ReadVariableOp2b
/sequential_26/conv2d_107/BiasAdd/ReadVariableOp/sequential_26/conv2d_107/BiasAdd/ReadVariableOp2`
.sequential_26/conv2d_107/Conv2D/ReadVariableOp.sequential_26/conv2d_107/Conv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP
 
_user_specified_nameinputs


$__inference_VAE_layer_call_fn_100592

inputs!
unknown:	
	unknown_0:	#
	unknown_1:	
	unknown_2:#
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:
À
	unknown_8:	
	unknown_9:
À

unknown_10:	

unknown_11:
À

unknown_12:	À$

unknown_13:@@

unknown_14:@$

unknown_15:@ 

unknown_16: $

unknown_17: 

unknown_18:$

unknown_19:

unknown_20:
identity¢StatefulPartitionedCallð
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP: *8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *G
fBR@
>__inference_VAE_layer_call_and_return_conditional_losses_99929w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:ÿÿÿÿÿÿÿÿÿPP: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP
 
_user_specified_nameinputs

ÿ
F__inference_conv2d_105_layer_call_and_return_conditional_losses_101651

inputs8
conv2d_readvariableop_resource:	-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:	*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ((	: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	
 
_user_specified_nameinputs
·
r
F__inference_add_loss_6_layer_call_and_return_conditional_losses_101367

inputs
identity

identity_1=
IdentityIdentityinputs*
T0*
_output_shapes
: ?

Identity_1Identityinputs*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: :> :

_output_shapes
: 
 
_user_specified_nameinputs
¼
M
1__inference_up_sampling2d_55_layer_call_fn_101807

inputs
identityÜ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_55_layer_call_and_return_conditional_losses_99389
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

í.
"__inference__traced_restore_102310
file_prefix2
assignvariableop_z_mean_kernel:
À-
assignvariableop_1_z_mean_bias:	7
#assignvariableop_2_z_log_var_kernel:
À0
!assignvariableop_3_z_log_var_bias:	6
"assignvariableop_4_dense_17_kernel:
À/
 assignvariableop_5_dense_17_bias:	À&
assignvariableop_6_adam_iter:	 (
assignvariableop_7_adam_beta_1: (
assignvariableop_8_adam_beta_2: '
assignvariableop_9_adam_decay: 0
&assignvariableop_10_adam_learning_rate: ?
%assignvariableop_11_conv2d_104_kernel:	1
#assignvariableop_12_conv2d_104_bias:	?
%assignvariableop_13_conv2d_105_kernel:	1
#assignvariableop_14_conv2d_105_bias:?
%assignvariableop_15_conv2d_106_kernel: 1
#assignvariableop_16_conv2d_106_bias: ?
%assignvariableop_17_conv2d_107_kernel: @1
#assignvariableop_18_conv2d_107_bias:@?
%assignvariableop_19_conv2d_108_kernel:@@1
#assignvariableop_20_conv2d_108_bias:@?
%assignvariableop_21_conv2d_109_kernel:@ 1
#assignvariableop_22_conv2d_109_bias: ?
%assignvariableop_23_conv2d_110_kernel: 1
#assignvariableop_24_conv2d_110_bias:?
%assignvariableop_25_conv2d_111_kernel:1
#assignvariableop_26_conv2d_111_bias:#
assignvariableop_27_total: #
assignvariableop_28_count: <
(assignvariableop_29_adam_z_mean_kernel_m:
À5
&assignvariableop_30_adam_z_mean_bias_m:	?
+assignvariableop_31_adam_z_log_var_kernel_m:
À8
)assignvariableop_32_adam_z_log_var_bias_m:	>
*assignvariableop_33_adam_dense_17_kernel_m:
À7
(assignvariableop_34_adam_dense_17_bias_m:	ÀF
,assignvariableop_35_adam_conv2d_104_kernel_m:	8
*assignvariableop_36_adam_conv2d_104_bias_m:	F
,assignvariableop_37_adam_conv2d_105_kernel_m:	8
*assignvariableop_38_adam_conv2d_105_bias_m:F
,assignvariableop_39_adam_conv2d_106_kernel_m: 8
*assignvariableop_40_adam_conv2d_106_bias_m: F
,assignvariableop_41_adam_conv2d_107_kernel_m: @8
*assignvariableop_42_adam_conv2d_107_bias_m:@F
,assignvariableop_43_adam_conv2d_108_kernel_m:@@8
*assignvariableop_44_adam_conv2d_108_bias_m:@F
,assignvariableop_45_adam_conv2d_109_kernel_m:@ 8
*assignvariableop_46_adam_conv2d_109_bias_m: F
,assignvariableop_47_adam_conv2d_110_kernel_m: 8
*assignvariableop_48_adam_conv2d_110_bias_m:F
,assignvariableop_49_adam_conv2d_111_kernel_m:8
*assignvariableop_50_adam_conv2d_111_bias_m:<
(assignvariableop_51_adam_z_mean_kernel_v:
À5
&assignvariableop_52_adam_z_mean_bias_v:	?
+assignvariableop_53_adam_z_log_var_kernel_v:
À8
)assignvariableop_54_adam_z_log_var_bias_v:	>
*assignvariableop_55_adam_dense_17_kernel_v:
À7
(assignvariableop_56_adam_dense_17_bias_v:	ÀF
,assignvariableop_57_adam_conv2d_104_kernel_v:	8
*assignvariableop_58_adam_conv2d_104_bias_v:	F
,assignvariableop_59_adam_conv2d_105_kernel_v:	8
*assignvariableop_60_adam_conv2d_105_bias_v:F
,assignvariableop_61_adam_conv2d_106_kernel_v: 8
*assignvariableop_62_adam_conv2d_106_bias_v: F
,assignvariableop_63_adam_conv2d_107_kernel_v: @8
*assignvariableop_64_adam_conv2d_107_bias_v:@F
,assignvariableop_65_adam_conv2d_108_kernel_v:@@8
*assignvariableop_66_adam_conv2d_108_bias_v:@F
,assignvariableop_67_adam_conv2d_109_kernel_v:@ 8
*assignvariableop_68_adam_conv2d_109_bias_v: F
,assignvariableop_69_adam_conv2d_110_kernel_v: 8
*assignvariableop_70_adam_conv2d_110_bias_v:F
,assignvariableop_71_adam_conv2d_111_kernel_v:8
*assignvariableop_72_adam_conv2d_111_bias_v:
identity_74¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_37¢AssignVariableOp_38¢AssignVariableOp_39¢AssignVariableOp_4¢AssignVariableOp_40¢AssignVariableOp_41¢AssignVariableOp_42¢AssignVariableOp_43¢AssignVariableOp_44¢AssignVariableOp_45¢AssignVariableOp_46¢AssignVariableOp_47¢AssignVariableOp_48¢AssignVariableOp_49¢AssignVariableOp_5¢AssignVariableOp_50¢AssignVariableOp_51¢AssignVariableOp_52¢AssignVariableOp_53¢AssignVariableOp_54¢AssignVariableOp_55¢AssignVariableOp_56¢AssignVariableOp_57¢AssignVariableOp_58¢AssignVariableOp_59¢AssignVariableOp_6¢AssignVariableOp_60¢AssignVariableOp_61¢AssignVariableOp_62¢AssignVariableOp_63¢AssignVariableOp_64¢AssignVariableOp_65¢AssignVariableOp_66¢AssignVariableOp_67¢AssignVariableOp_68¢AssignVariableOp_69¢AssignVariableOp_7¢AssignVariableOp_70¢AssignVariableOp_71¢AssignVariableOp_72¢AssignVariableOp_8¢AssignVariableOp_9¤$
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:J*
dtype0*Ê#
valueÀ#B½#JB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:J*
dtype0*©
valueBJB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*¾
_output_shapes«
¨::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*X
dtypesN
L2J	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOpassignvariableop_z_mean_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOpassignvariableop_1_z_mean_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp#assignvariableop_2_z_log_var_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp!assignvariableop_3_z_log_var_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_17_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_17_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_iterIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_beta_1Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_beta_2Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_decayIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOp&assignvariableop_10_adam_learning_rateIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOp%assignvariableop_11_conv2d_104_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOp#assignvariableop_12_conv2d_104_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOp%assignvariableop_13_conv2d_105_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOp#assignvariableop_14_conv2d_105_biasIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOp%assignvariableop_15_conv2d_106_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOp#assignvariableop_16_conv2d_106_biasIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOp%assignvariableop_17_conv2d_107_kernelIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOp#assignvariableop_18_conv2d_107_biasIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp%assignvariableop_19_conv2d_108_kernelIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOp#assignvariableop_20_conv2d_108_biasIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOp%assignvariableop_21_conv2d_109_kernelIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOp#assignvariableop_22_conv2d_109_biasIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOp%assignvariableop_23_conv2d_110_kernelIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp#assignvariableop_24_conv2d_110_biasIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOp%assignvariableop_25_conv2d_111_kernelIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOp#assignvariableop_26_conv2d_111_biasIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_27AssignVariableOpassignvariableop_27_totalIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_28AssignVariableOpassignvariableop_28_countIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp(assignvariableop_29_adam_z_mean_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOp&assignvariableop_30_adam_z_mean_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_31AssignVariableOp+assignvariableop_31_adam_z_log_var_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_32AssignVariableOp)assignvariableop_32_adam_z_log_var_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_33AssignVariableOp*assignvariableop_33_adam_dense_17_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_34AssignVariableOp(assignvariableop_34_adam_dense_17_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_35AssignVariableOp,assignvariableop_35_adam_conv2d_104_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_36AssignVariableOp*assignvariableop_36_adam_conv2d_104_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_37AssignVariableOp,assignvariableop_37_adam_conv2d_105_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_38AssignVariableOp*assignvariableop_38_adam_conv2d_105_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_39AssignVariableOp,assignvariableop_39_adam_conv2d_106_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_40AssignVariableOp*assignvariableop_40_adam_conv2d_106_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_41AssignVariableOp,assignvariableop_41_adam_conv2d_107_kernel_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_42AssignVariableOp*assignvariableop_42_adam_conv2d_107_bias_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_43AssignVariableOp,assignvariableop_43_adam_conv2d_108_kernel_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_44AssignVariableOp*assignvariableop_44_adam_conv2d_108_bias_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_45AssignVariableOp,assignvariableop_45_adam_conv2d_109_kernel_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_46AssignVariableOp*assignvariableop_46_adam_conv2d_109_bias_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_47AssignVariableOp,assignvariableop_47_adam_conv2d_110_kernel_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_48AssignVariableOp*assignvariableop_48_adam_conv2d_110_bias_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_49AssignVariableOp,assignvariableop_49_adam_conv2d_111_kernel_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_50AssignVariableOp*assignvariableop_50_adam_conv2d_111_bias_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_51AssignVariableOp(assignvariableop_51_adam_z_mean_kernel_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_52AssignVariableOp&assignvariableop_52_adam_z_mean_bias_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_53AssignVariableOp+assignvariableop_53_adam_z_log_var_kernel_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_54AssignVariableOp)assignvariableop_54_adam_z_log_var_bias_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_55AssignVariableOp*assignvariableop_55_adam_dense_17_kernel_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_56AssignVariableOp(assignvariableop_56_adam_dense_17_bias_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_57AssignVariableOp,assignvariableop_57_adam_conv2d_104_kernel_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_58AssignVariableOp*assignvariableop_58_adam_conv2d_104_bias_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_59AssignVariableOp,assignvariableop_59_adam_conv2d_105_kernel_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_60AssignVariableOp*assignvariableop_60_adam_conv2d_105_bias_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_61AssignVariableOp,assignvariableop_61_adam_conv2d_106_kernel_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_62AssignVariableOp*assignvariableop_62_adam_conv2d_106_bias_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_63AssignVariableOp,assignvariableop_63_adam_conv2d_107_kernel_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_64AssignVariableOp*assignvariableop_64_adam_conv2d_107_bias_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_65AssignVariableOp,assignvariableop_65_adam_conv2d_108_kernel_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_66AssignVariableOp*assignvariableop_66_adam_conv2d_108_bias_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_67AssignVariableOp,assignvariableop_67_adam_conv2d_109_kernel_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_68AssignVariableOp*assignvariableop_68_adam_conv2d_109_bias_vIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_69AssignVariableOp,assignvariableop_69_adam_conv2d_110_kernel_vIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_70AssignVariableOp*assignvariableop_70_adam_conv2d_110_bias_vIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_71AssignVariableOp,assignvariableop_71_adam_conv2d_111_kernel_vIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_72AssignVariableOp*assignvariableop_72_adam_conv2d_111_bias_vIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 
Identity_73Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_74IdentityIdentity_73:output:0^NoOp_1*
T0*
_output_shapes
: 
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_74Identity_74:output:0*©
_input_shapes
: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
ñ
þ
E__inference_conv2d_109_layer_call_and_return_conditional_losses_99429

inputs8
conv2d_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0«
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ {
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs

g
K__inference_up_sampling2d_53_layer_call_and_return_conditional_losses_99351

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:½
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:µ
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
µ1
µ
>__inference_VAE_layer_call_and_return_conditional_losses_99929

inputs'
encoder_99718:	
encoder_99720:	'
encoder_99722:	
encoder_99724:'
encoder_99726: 
encoder_99728: '
encoder_99730: @
encoder_99732:@ 
z_mean_99754:
À
z_mean_99756:	#
z_log_var_99770:
À
z_log_var_99772:	"
dense_17_99815:
À
dense_17_99817:	À'
decoder_99885:@@
decoder_99887:@'
decoder_99889:@ 
decoder_99891: '
decoder_99893: 
decoder_99895:'
decoder_99897:
decoder_99899:
identity

identity_1¢decoder/StatefulPartitionedCall¢ dense_17/StatefulPartitionedCall¢encoder/StatefulPartitionedCall¢"sampling_9/StatefulPartitionedCall¢!z_log_var/StatefulPartitionedCall¢z_mean/StatefulPartitionedCallÚ
encoder/StatefulPartitionedCallStatefulPartitionedCallinputsencoder_99718encoder_99720encoder_99722encoder_99724encoder_99726encoder_99728encoder_99730encoder_99732*
Tin
2	*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_encoder_layer_call_and_return_conditional_losses_99717á
flatten_13/PartitionedCallPartitionedCall(encoder/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_flatten_13_layer_call_and_return_conditional_losses_99741
z_mean/StatefulPartitionedCallStatefulPartitionedCall#flatten_13/PartitionedCall:output:0z_mean_99754z_mean_99756*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_z_mean_layer_call_and_return_conditional_losses_99753
!z_log_var/StatefulPartitionedCallStatefulPartitionedCall#flatten_13/PartitionedCall:output:0z_log_var_99770z_log_var_99772*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_z_log_var_layer_call_and_return_conditional_losses_99769
"sampling_9/StatefulPartitionedCallStatefulPartitionedCall'z_mean/StatefulPartitionedCall:output:0*z_log_var/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_sampling_9_layer_call_and_return_conditional_losses_99801
 dense_17/StatefulPartitionedCallStatefulPartitionedCall+sampling_9/StatefulPartitionedCall:output:0dense_17_99815dense_17_99817*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_17_layer_call_and_return_conditional_losses_99814é
reshape_13/PartitionedCallPartitionedCall)dense_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_reshape_13_layer_call_and_return_conditional_losses_99834÷
decoder/StatefulPartitionedCallStatefulPartitionedCall#reshape_13/PartitionedCall:output:0decoder_99885decoder_99887decoder_99889decoder_99891decoder_99893decoder_99895decoder_99897decoder_99899*
Tin
2	*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_decoder_layer_call_and_return_conditional_losses_99884ï
kl_9/PartitionedCallPartitionedCall'z_mean/StatefulPartitionedCall:output:0*z_log_var/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_kl_9_layer_call_and_return_conditional_losses_99917Ç
add_loss_6/PartitionedCallPartitionedCallkl_9/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: : * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_add_loss_6_layer_call_and_return_conditional_losses_99924
IdentityIdentity(decoder/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPPc

Identity_1Identity#add_loss_6/PartitionedCall:output:1^NoOp*
T0*
_output_shapes
: 
NoOpNoOp ^decoder/StatefulPartitionedCall!^dense_17/StatefulPartitionedCall ^encoder/StatefulPartitionedCall#^sampling_9/StatefulPartitionedCall"^z_log_var/StatefulPartitionedCall^z_mean/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:ÿÿÿÿÿÿÿÿÿPP: : : : : : : : : : : : : : : : : : : : : : 2B
decoder/StatefulPartitionedCalldecoder/StatefulPartitionedCall2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2B
encoder/StatefulPartitionedCallencoder/StatefulPartitionedCall2H
"sampling_9/StatefulPartitionedCall"sampling_9/StatefulPartitionedCall2F
!z_log_var/StatefulPartitionedCall!z_log_var/StatefulPartitionedCall2@
z_mean/StatefulPartitionedCallz_mean/StatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP
 
_user_specified_nameinputs

þ
E__inference_conv2d_104_layer_call_and_return_conditional_losses_99064

inputs8
conv2d_readvariableop_resource:	-
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:	*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:	*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿPP: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP
 
_user_specified_nameinputs
¹
 
+__inference_conv2d_110_layer_call_fn_101791

inputs!
unknown: 
	unknown_0:
identity¢StatefulPartitionedCall÷
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_110_layer_call_and_return_conditional_losses_99447
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
é
r
E__inference_sampling_9_layer_call_and_return_conditional_losses_99801

inputs
inputs_1
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask=
Shape_1Shapeinputs*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask{
random_normal/shapePackstrided_slice:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:W
random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    Y
random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
"random_normal/RandomStandardNormalRandomStandardNormalrandom_normal/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
random_normalAddV2random_normal/mul:z:0random_normal/mean:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿJ
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?W
mulMulmul/x:output:0inputs_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿF
ExpExpmul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
mul_1MulExp:y:0random_normal:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿR
addAddV2inputs	mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
IdentityIdentityadd:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


Ý
.__inference_sequential_26_layer_call_fn_101388

inputs!
unknown:	
	unknown_0:	#
	unknown_1:	
	unknown_2:#
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
identity¢StatefulPartitionedCall¶
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_26_layer_call_and_return_conditional_losses_99122w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿPP: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP
 
_user_specified_nameinputs
¼
M
1__inference_up_sampling2d_54_layer_call_fn_101770

inputs
identityÜ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_54_layer_call_and_return_conditional_losses_99370
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

h
L__inference_up_sampling2d_53_layer_call_and_return_conditional_losses_101745

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:½
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:µ
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
2
Ú
C__inference_encoder_layer_call_and_return_conditional_losses_101045

inputsQ
7sequential_26_conv2d_104_conv2d_readvariableop_resource:	F
8sequential_26_conv2d_104_biasadd_readvariableop_resource:	Q
7sequential_26_conv2d_105_conv2d_readvariableop_resource:	F
8sequential_26_conv2d_105_biasadd_readvariableop_resource:Q
7sequential_26_conv2d_106_conv2d_readvariableop_resource: F
8sequential_26_conv2d_106_biasadd_readvariableop_resource: Q
7sequential_26_conv2d_107_conv2d_readvariableop_resource: @F
8sequential_26_conv2d_107_biasadd_readvariableop_resource:@
identity¢/sequential_26/conv2d_104/BiasAdd/ReadVariableOp¢.sequential_26/conv2d_104/Conv2D/ReadVariableOp¢/sequential_26/conv2d_105/BiasAdd/ReadVariableOp¢.sequential_26/conv2d_105/Conv2D/ReadVariableOp¢/sequential_26/conv2d_106/BiasAdd/ReadVariableOp¢.sequential_26/conv2d_106/Conv2D/ReadVariableOp¢/sequential_26/conv2d_107/BiasAdd/ReadVariableOp¢.sequential_26/conv2d_107/Conv2D/ReadVariableOp®
.sequential_26/conv2d_104/Conv2D/ReadVariableOpReadVariableOp7sequential_26_conv2d_104_conv2d_readvariableop_resource*&
_output_shapes
:	*
dtype0Ë
sequential_26/conv2d_104/Conv2DConv2Dinputs6sequential_26/conv2d_104/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	*
paddingSAME*
strides
¤
/sequential_26/conv2d_104/BiasAdd/ReadVariableOpReadVariableOp8sequential_26_conv2d_104_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0È
 sequential_26/conv2d_104/BiasAddBiasAdd(sequential_26/conv2d_104/Conv2D:output:07sequential_26/conv2d_104/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	
sequential_26/conv2d_104/ReluRelu)sequential_26/conv2d_104/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	®
.sequential_26/conv2d_105/Conv2D/ReadVariableOpReadVariableOp7sequential_26_conv2d_105_conv2d_readvariableop_resource*&
_output_shapes
:	*
dtype0ð
sequential_26/conv2d_105/Conv2DConv2D+sequential_26/conv2d_104/Relu:activations:06sequential_26/conv2d_105/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
¤
/sequential_26/conv2d_105/BiasAdd/ReadVariableOpReadVariableOp8sequential_26_conv2d_105_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0È
 sequential_26/conv2d_105/BiasAddBiasAdd(sequential_26/conv2d_105/Conv2D:output:07sequential_26/conv2d_105/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
sequential_26/conv2d_105/ReluRelu)sequential_26/conv2d_105/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
.sequential_26/conv2d_106/Conv2D/ReadVariableOpReadVariableOp7sequential_26_conv2d_106_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0ð
sequential_26/conv2d_106/Conv2DConv2D+sequential_26/conv2d_105/Relu:activations:06sequential_26/conv2d_106/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 *
paddingSAME*
strides
¤
/sequential_26/conv2d_106/BiasAdd/ReadVariableOpReadVariableOp8sequential_26_conv2d_106_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0È
 sequential_26/conv2d_106/BiasAddBiasAdd(sequential_26/conv2d_106/Conv2D:output:07sequential_26/conv2d_106/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
sequential_26/conv2d_106/ReluRelu)sequential_26/conv2d_106/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 ®
.sequential_26/conv2d_107/Conv2D/ReadVariableOpReadVariableOp7sequential_26_conv2d_107_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0ð
sequential_26/conv2d_107/Conv2DConv2D+sequential_26/conv2d_106/Relu:activations:06sequential_26/conv2d_107/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
¤
/sequential_26/conv2d_107/BiasAdd/ReadVariableOpReadVariableOp8sequential_26_conv2d_107_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0È
 sequential_26/conv2d_107/BiasAddBiasAdd(sequential_26/conv2d_107/Conv2D:output:07sequential_26/conv2d_107/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
sequential_26/conv2d_107/ReluRelu)sequential_26/conv2d_107/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
IdentityIdentity+sequential_26/conv2d_107/Relu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ò
NoOpNoOp0^sequential_26/conv2d_104/BiasAdd/ReadVariableOp/^sequential_26/conv2d_104/Conv2D/ReadVariableOp0^sequential_26/conv2d_105/BiasAdd/ReadVariableOp/^sequential_26/conv2d_105/Conv2D/ReadVariableOp0^sequential_26/conv2d_106/BiasAdd/ReadVariableOp/^sequential_26/conv2d_106/Conv2D/ReadVariableOp0^sequential_26/conv2d_107/BiasAdd/ReadVariableOp/^sequential_26/conv2d_107/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿPP: : : : : : : : 2b
/sequential_26/conv2d_104/BiasAdd/ReadVariableOp/sequential_26/conv2d_104/BiasAdd/ReadVariableOp2`
.sequential_26/conv2d_104/Conv2D/ReadVariableOp.sequential_26/conv2d_104/Conv2D/ReadVariableOp2b
/sequential_26/conv2d_105/BiasAdd/ReadVariableOp/sequential_26/conv2d_105/BiasAdd/ReadVariableOp2`
.sequential_26/conv2d_105/Conv2D/ReadVariableOp.sequential_26/conv2d_105/Conv2D/ReadVariableOp2b
/sequential_26/conv2d_106/BiasAdd/ReadVariableOp/sequential_26/conv2d_106/BiasAdd/ReadVariableOp2`
.sequential_26/conv2d_106/Conv2D/ReadVariableOp.sequential_26/conv2d_106/Conv2D/ReadVariableOp2b
/sequential_26/conv2d_107/BiasAdd/ReadVariableOp/sequential_26/conv2d_107/BiasAdd/ReadVariableOp2`
.sequential_26/conv2d_107/Conv2D/ReadVariableOp.sequential_26/conv2d_107/Conv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP
 
_user_specified_nameinputs
ó	
i
?__inference_kl_9_layer_call_and_return_conditional_losses_99917

inputs
inputs_1
identityK
SquareSquareinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿS
subSubinputs_1
Square:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿG
ExpExpinputs_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
sub_1Subsub:z:0Exp:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿJ
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Z
addAddV2	sub_1:z:0add/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
ConstConst*
_output_shapes
:*
dtype0*
valueB"       F
MeanMeanadd:z:0Const:output:0*
T0*
_output_shapes
: J
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL½J
mulMulmul/x:output:0Mean:output:0*
T0*
_output_shapes
: >
IdentityIdentitymul:z:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

«
H__inference_sequential_26_layer_call_and_return_conditional_losses_99228

inputs*
conv2d_104_99207:	
conv2d_104_99209:	*
conv2d_105_99212:	
conv2d_105_99214:*
conv2d_106_99217: 
conv2d_106_99219: *
conv2d_107_99222: @
conv2d_107_99224:@
identity¢"conv2d_104/StatefulPartitionedCall¢"conv2d_105/StatefulPartitionedCall¢"conv2d_106/StatefulPartitionedCall¢"conv2d_107/StatefulPartitionedCall
"conv2d_104/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_104_99207conv2d_104_99209*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_104_layer_call_and_return_conditional_losses_99064¥
"conv2d_105/StatefulPartitionedCallStatefulPartitionedCall+conv2d_104/StatefulPartitionedCall:output:0conv2d_105_99212conv2d_105_99214*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_105_layer_call_and_return_conditional_losses_99081¥
"conv2d_106/StatefulPartitionedCallStatefulPartitionedCall+conv2d_105/StatefulPartitionedCall:output:0conv2d_106_99217conv2d_106_99219*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_106_layer_call_and_return_conditional_losses_99098¥
"conv2d_107/StatefulPartitionedCallStatefulPartitionedCall+conv2d_106/StatefulPartitionedCall:output:0conv2d_107_99222conv2d_107_99224*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_107_layer_call_and_return_conditional_losses_99115
IdentityIdentity+conv2d_107/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ú
NoOpNoOp#^conv2d_104/StatefulPartitionedCall#^conv2d_105/StatefulPartitionedCall#^conv2d_106/StatefulPartitionedCall#^conv2d_107/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿPP: : : : : : : : 2H
"conv2d_104/StatefulPartitionedCall"conv2d_104/StatefulPartitionedCall2H
"conv2d_105/StatefulPartitionedCall"conv2d_105/StatefulPartitionedCall2H
"conv2d_106/StatefulPartitionedCall"conv2d_106/StatefulPartitionedCall2H
"conv2d_107/StatefulPartitionedCall"conv2d_107/StatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP
 
_user_specified_nameinputs
ò
ÿ
F__inference_conv2d_110_layer_call_and_return_conditional_losses_101802

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0«
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿj
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
â
G
+__inference_add_loss_6_layer_call_fn_101362

inputs
identity¥
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: : * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_add_loss_6_layer_call_and_return_conditional_losses_99924O
IdentityIdentityPartitionedCall:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: :> :

_output_shapes
: 
 
_user_specified_nameinputs
H
Õ
C__inference_decoder_layer_call_and_return_conditional_losses_100063
zQ
7sequential_27_conv2d_108_conv2d_readvariableop_resource:@@F
8sequential_27_conv2d_108_biasadd_readvariableop_resource:@Q
7sequential_27_conv2d_109_conv2d_readvariableop_resource:@ F
8sequential_27_conv2d_109_biasadd_readvariableop_resource: Q
7sequential_27_conv2d_110_conv2d_readvariableop_resource: F
8sequential_27_conv2d_110_biasadd_readvariableop_resource:Q
7sequential_27_conv2d_111_conv2d_readvariableop_resource:F
8sequential_27_conv2d_111_biasadd_readvariableop_resource:
identity¢/sequential_27/conv2d_108/BiasAdd/ReadVariableOp¢.sequential_27/conv2d_108/Conv2D/ReadVariableOp¢/sequential_27/conv2d_109/BiasAdd/ReadVariableOp¢.sequential_27/conv2d_109/Conv2D/ReadVariableOp¢/sequential_27/conv2d_110/BiasAdd/ReadVariableOp¢.sequential_27/conv2d_110/Conv2D/ReadVariableOp¢/sequential_27/conv2d_111/BiasAdd/ReadVariableOp¢.sequential_27/conv2d_111/Conv2D/ReadVariableOpu
$sequential_27/up_sampling2d_52/ConstConst*
_output_shapes
:*
dtype0*
valueB"      w
&sequential_27/up_sampling2d_52/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      ®
"sequential_27/up_sampling2d_52/mulMul-sequential_27/up_sampling2d_52/Const:output:0/sequential_27/up_sampling2d_52/Const_1:output:0*
T0*
_output_shapes
:Ó
;sequential_27/up_sampling2d_52/resize/ResizeNearestNeighborResizeNearestNeighborz&sequential_27/up_sampling2d_52/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

@*
half_pixel_centers(®
.sequential_27/conv2d_108/Conv2D/ReadVariableOpReadVariableOp7sequential_27_conv2d_108_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
sequential_27/conv2d_108/Conv2DConv2DLsequential_27/up_sampling2d_52/resize/ResizeNearestNeighbor:resized_images:06sequential_27/conv2d_108/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

@*
paddingSAME*
strides
¤
/sequential_27/conv2d_108/BiasAdd/ReadVariableOpReadVariableOp8sequential_27_conv2d_108_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0È
 sequential_27/conv2d_108/BiasAddBiasAdd(sequential_27/conv2d_108/Conv2D:output:07sequential_27/conv2d_108/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

@
sequential_27/conv2d_108/ReluRelu)sequential_27/conv2d_108/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

@u
$sequential_27/up_sampling2d_53/ConstConst*
_output_shapes
:*
dtype0*
valueB"
   
   w
&sequential_27/up_sampling2d_53/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      ®
"sequential_27/up_sampling2d_53/mulMul-sequential_27/up_sampling2d_53/Const:output:0/sequential_27/up_sampling2d_53/Const_1:output:0*
T0*
_output_shapes
:ý
;sequential_27/up_sampling2d_53/resize/ResizeNearestNeighborResizeNearestNeighbor+sequential_27/conv2d_108/Relu:activations:0&sequential_27/up_sampling2d_53/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
half_pixel_centers(®
.sequential_27/conv2d_109/Conv2D/ReadVariableOpReadVariableOp7sequential_27_conv2d_109_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0
sequential_27/conv2d_109/Conv2DConv2DLsequential_27/up_sampling2d_53/resize/ResizeNearestNeighbor:resized_images:06sequential_27/conv2d_109/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
paddingSAME*
strides
¤
/sequential_27/conv2d_109/BiasAdd/ReadVariableOpReadVariableOp8sequential_27_conv2d_109_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0È
 sequential_27/conv2d_109/BiasAddBiasAdd(sequential_27/conv2d_109/Conv2D:output:07sequential_27/conv2d_109/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
sequential_27/conv2d_109/ReluRelu)sequential_27/conv2d_109/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ u
$sequential_27/up_sampling2d_54/ConstConst*
_output_shapes
:*
dtype0*
valueB"      w
&sequential_27/up_sampling2d_54/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      ®
"sequential_27/up_sampling2d_54/mulMul-sequential_27/up_sampling2d_54/Const:output:0/sequential_27/up_sampling2d_54/Const_1:output:0*
T0*
_output_shapes
:ý
;sequential_27/up_sampling2d_54/resize/ResizeNearestNeighborResizeNearestNeighbor+sequential_27/conv2d_109/Relu:activations:0&sequential_27/up_sampling2d_54/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(( *
half_pixel_centers(®
.sequential_27/conv2d_110/Conv2D/ReadVariableOpReadVariableOp7sequential_27_conv2d_110_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
sequential_27/conv2d_110/Conv2DConv2DLsequential_27/up_sampling2d_54/resize/ResizeNearestNeighbor:resized_images:06sequential_27/conv2d_110/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((*
paddingSAME*
strides
¤
/sequential_27/conv2d_110/BiasAdd/ReadVariableOpReadVariableOp8sequential_27_conv2d_110_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0È
 sequential_27/conv2d_110/BiasAddBiasAdd(sequential_27/conv2d_110/Conv2D:output:07sequential_27/conv2d_110/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((
sequential_27/conv2d_110/ReluRelu)sequential_27/conv2d_110/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((u
$sequential_27/up_sampling2d_55/ConstConst*
_output_shapes
:*
dtype0*
valueB"(   (   w
&sequential_27/up_sampling2d_55/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      ®
"sequential_27/up_sampling2d_55/mulMul-sequential_27/up_sampling2d_55/Const:output:0/sequential_27/up_sampling2d_55/Const_1:output:0*
T0*
_output_shapes
:ý
;sequential_27/up_sampling2d_55/resize/ResizeNearestNeighborResizeNearestNeighbor+sequential_27/conv2d_110/Relu:activations:0&sequential_27/up_sampling2d_55/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP*
half_pixel_centers(®
.sequential_27/conv2d_111/Conv2D/ReadVariableOpReadVariableOp7sequential_27_conv2d_111_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
sequential_27/conv2d_111/Conv2DConv2DLsequential_27/up_sampling2d_55/resize/ResizeNearestNeighbor:resized_images:06sequential_27/conv2d_111/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP*
paddingSAME*
strides
¤
/sequential_27/conv2d_111/BiasAdd/ReadVariableOpReadVariableOp8sequential_27_conv2d_111_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0È
 sequential_27/conv2d_111/BiasAddBiasAdd(sequential_27/conv2d_111/Conv2D:output:07sequential_27/conv2d_111/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP
 sequential_27/conv2d_111/SigmoidSigmoid)sequential_27/conv2d_111/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP{
IdentityIdentity$sequential_27/conv2d_111/Sigmoid:y:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPPÒ
NoOpNoOp0^sequential_27/conv2d_108/BiasAdd/ReadVariableOp/^sequential_27/conv2d_108/Conv2D/ReadVariableOp0^sequential_27/conv2d_109/BiasAdd/ReadVariableOp/^sequential_27/conv2d_109/Conv2D/ReadVariableOp0^sequential_27/conv2d_110/BiasAdd/ReadVariableOp/^sequential_27/conv2d_110/Conv2D/ReadVariableOp0^sequential_27/conv2d_111/BiasAdd/ReadVariableOp/^sequential_27/conv2d_111/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ@: : : : : : : : 2b
/sequential_27/conv2d_108/BiasAdd/ReadVariableOp/sequential_27/conv2d_108/BiasAdd/ReadVariableOp2`
.sequential_27/conv2d_108/Conv2D/ReadVariableOp.sequential_27/conv2d_108/Conv2D/ReadVariableOp2b
/sequential_27/conv2d_109/BiasAdd/ReadVariableOp/sequential_27/conv2d_109/BiasAdd/ReadVariableOp2`
.sequential_27/conv2d_109/Conv2D/ReadVariableOp.sequential_27/conv2d_109/Conv2D/ReadVariableOp2b
/sequential_27/conv2d_110/BiasAdd/ReadVariableOp/sequential_27/conv2d_110/BiasAdd/ReadVariableOp2`
.sequential_27/conv2d_110/Conv2D/ReadVariableOp.sequential_27/conv2d_110/Conv2D/ReadVariableOp2b
/sequential_27/conv2d_111/BiasAdd/ReadVariableOp/sequential_27/conv2d_111/BiasAdd/ReadVariableOp2`
.sequential_27/conv2d_111/Conv2D/ReadVariableOp.sequential_27/conv2d_111/Conv2D/ReadVariableOp:R N
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@

_user_specified_namez
ò
ÿ
F__inference_conv2d_109_layer_call_and_return_conditional_losses_101765

inputs8
conv2d_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0«
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ {
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs

Ä
__inference__traced_save_102081
file_prefix,
(savev2_z_mean_kernel_read_readvariableop*
&savev2_z_mean_bias_read_readvariableop/
+savev2_z_log_var_kernel_read_readvariableop-
)savev2_z_log_var_bias_read_readvariableop.
*savev2_dense_17_kernel_read_readvariableop,
(savev2_dense_17_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop0
,savev2_conv2d_104_kernel_read_readvariableop.
*savev2_conv2d_104_bias_read_readvariableop0
,savev2_conv2d_105_kernel_read_readvariableop.
*savev2_conv2d_105_bias_read_readvariableop0
,savev2_conv2d_106_kernel_read_readvariableop.
*savev2_conv2d_106_bias_read_readvariableop0
,savev2_conv2d_107_kernel_read_readvariableop.
*savev2_conv2d_107_bias_read_readvariableop0
,savev2_conv2d_108_kernel_read_readvariableop.
*savev2_conv2d_108_bias_read_readvariableop0
,savev2_conv2d_109_kernel_read_readvariableop.
*savev2_conv2d_109_bias_read_readvariableop0
,savev2_conv2d_110_kernel_read_readvariableop.
*savev2_conv2d_110_bias_read_readvariableop0
,savev2_conv2d_111_kernel_read_readvariableop.
*savev2_conv2d_111_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop3
/savev2_adam_z_mean_kernel_m_read_readvariableop1
-savev2_adam_z_mean_bias_m_read_readvariableop6
2savev2_adam_z_log_var_kernel_m_read_readvariableop4
0savev2_adam_z_log_var_bias_m_read_readvariableop5
1savev2_adam_dense_17_kernel_m_read_readvariableop3
/savev2_adam_dense_17_bias_m_read_readvariableop7
3savev2_adam_conv2d_104_kernel_m_read_readvariableop5
1savev2_adam_conv2d_104_bias_m_read_readvariableop7
3savev2_adam_conv2d_105_kernel_m_read_readvariableop5
1savev2_adam_conv2d_105_bias_m_read_readvariableop7
3savev2_adam_conv2d_106_kernel_m_read_readvariableop5
1savev2_adam_conv2d_106_bias_m_read_readvariableop7
3savev2_adam_conv2d_107_kernel_m_read_readvariableop5
1savev2_adam_conv2d_107_bias_m_read_readvariableop7
3savev2_adam_conv2d_108_kernel_m_read_readvariableop5
1savev2_adam_conv2d_108_bias_m_read_readvariableop7
3savev2_adam_conv2d_109_kernel_m_read_readvariableop5
1savev2_adam_conv2d_109_bias_m_read_readvariableop7
3savev2_adam_conv2d_110_kernel_m_read_readvariableop5
1savev2_adam_conv2d_110_bias_m_read_readvariableop7
3savev2_adam_conv2d_111_kernel_m_read_readvariableop5
1savev2_adam_conv2d_111_bias_m_read_readvariableop3
/savev2_adam_z_mean_kernel_v_read_readvariableop1
-savev2_adam_z_mean_bias_v_read_readvariableop6
2savev2_adam_z_log_var_kernel_v_read_readvariableop4
0savev2_adam_z_log_var_bias_v_read_readvariableop5
1savev2_adam_dense_17_kernel_v_read_readvariableop3
/savev2_adam_dense_17_bias_v_read_readvariableop7
3savev2_adam_conv2d_104_kernel_v_read_readvariableop5
1savev2_adam_conv2d_104_bias_v_read_readvariableop7
3savev2_adam_conv2d_105_kernel_v_read_readvariableop5
1savev2_adam_conv2d_105_bias_v_read_readvariableop7
3savev2_adam_conv2d_106_kernel_v_read_readvariableop5
1savev2_adam_conv2d_106_bias_v_read_readvariableop7
3savev2_adam_conv2d_107_kernel_v_read_readvariableop5
1savev2_adam_conv2d_107_bias_v_read_readvariableop7
3savev2_adam_conv2d_108_kernel_v_read_readvariableop5
1savev2_adam_conv2d_108_bias_v_read_readvariableop7
3savev2_adam_conv2d_109_kernel_v_read_readvariableop5
1savev2_adam_conv2d_109_bias_v_read_readvariableop7
3savev2_adam_conv2d_110_kernel_v_read_readvariableop5
1savev2_adam_conv2d_110_bias_v_read_readvariableop7
3savev2_adam_conv2d_111_kernel_v_read_readvariableop5
1savev2_adam_conv2d_111_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ¡$
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:J*
dtype0*Ê#
valueÀ#B½#JB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:J*
dtype0*©
valueBJB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ­
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0(savev2_z_mean_kernel_read_readvariableop&savev2_z_mean_bias_read_readvariableop+savev2_z_log_var_kernel_read_readvariableop)savev2_z_log_var_bias_read_readvariableop*savev2_dense_17_kernel_read_readvariableop(savev2_dense_17_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop,savev2_conv2d_104_kernel_read_readvariableop*savev2_conv2d_104_bias_read_readvariableop,savev2_conv2d_105_kernel_read_readvariableop*savev2_conv2d_105_bias_read_readvariableop,savev2_conv2d_106_kernel_read_readvariableop*savev2_conv2d_106_bias_read_readvariableop,savev2_conv2d_107_kernel_read_readvariableop*savev2_conv2d_107_bias_read_readvariableop,savev2_conv2d_108_kernel_read_readvariableop*savev2_conv2d_108_bias_read_readvariableop,savev2_conv2d_109_kernel_read_readvariableop*savev2_conv2d_109_bias_read_readvariableop,savev2_conv2d_110_kernel_read_readvariableop*savev2_conv2d_110_bias_read_readvariableop,savev2_conv2d_111_kernel_read_readvariableop*savev2_conv2d_111_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop/savev2_adam_z_mean_kernel_m_read_readvariableop-savev2_adam_z_mean_bias_m_read_readvariableop2savev2_adam_z_log_var_kernel_m_read_readvariableop0savev2_adam_z_log_var_bias_m_read_readvariableop1savev2_adam_dense_17_kernel_m_read_readvariableop/savev2_adam_dense_17_bias_m_read_readvariableop3savev2_adam_conv2d_104_kernel_m_read_readvariableop1savev2_adam_conv2d_104_bias_m_read_readvariableop3savev2_adam_conv2d_105_kernel_m_read_readvariableop1savev2_adam_conv2d_105_bias_m_read_readvariableop3savev2_adam_conv2d_106_kernel_m_read_readvariableop1savev2_adam_conv2d_106_bias_m_read_readvariableop3savev2_adam_conv2d_107_kernel_m_read_readvariableop1savev2_adam_conv2d_107_bias_m_read_readvariableop3savev2_adam_conv2d_108_kernel_m_read_readvariableop1savev2_adam_conv2d_108_bias_m_read_readvariableop3savev2_adam_conv2d_109_kernel_m_read_readvariableop1savev2_adam_conv2d_109_bias_m_read_readvariableop3savev2_adam_conv2d_110_kernel_m_read_readvariableop1savev2_adam_conv2d_110_bias_m_read_readvariableop3savev2_adam_conv2d_111_kernel_m_read_readvariableop1savev2_adam_conv2d_111_bias_m_read_readvariableop/savev2_adam_z_mean_kernel_v_read_readvariableop-savev2_adam_z_mean_bias_v_read_readvariableop2savev2_adam_z_log_var_kernel_v_read_readvariableop0savev2_adam_z_log_var_bias_v_read_readvariableop1savev2_adam_dense_17_kernel_v_read_readvariableop/savev2_adam_dense_17_bias_v_read_readvariableop3savev2_adam_conv2d_104_kernel_v_read_readvariableop1savev2_adam_conv2d_104_bias_v_read_readvariableop3savev2_adam_conv2d_105_kernel_v_read_readvariableop1savev2_adam_conv2d_105_bias_v_read_readvariableop3savev2_adam_conv2d_106_kernel_v_read_readvariableop1savev2_adam_conv2d_106_bias_v_read_readvariableop3savev2_adam_conv2d_107_kernel_v_read_readvariableop1savev2_adam_conv2d_107_bias_v_read_readvariableop3savev2_adam_conv2d_108_kernel_v_read_readvariableop1savev2_adam_conv2d_108_bias_v_read_readvariableop3savev2_adam_conv2d_109_kernel_v_read_readvariableop1savev2_adam_conv2d_109_bias_v_read_readvariableop3savev2_adam_conv2d_110_kernel_v_read_readvariableop1savev2_adam_conv2d_110_bias_v_read_readvariableop3savev2_adam_conv2d_111_kernel_v_read_readvariableop1savev2_adam_conv2d_111_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *X
dtypesN
L2J	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*
_input_shapes
ý: :
À::
À::
À:À: : : : : :	:	:	:: : : @:@:@@:@:@ : : :::: : :
À::
À::
À:À:	:	:	:: : : @:@:@@:@:@ : : ::::
À::
À::
À:À:	:	:	:: : : @:@:@@:@:@ : : :::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
À:!

_output_shapes	
::&"
 
_output_shapes
:
À:!

_output_shapes	
::&"
 
_output_shapes
:
À:!

_output_shapes	
:À:

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:	: 

_output_shapes
:	:,(
&
_output_shapes
:	: 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:,(
&
_output_shapes
:@ : 

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
À:!

_output_shapes	
::& "
 
_output_shapes
:
À:!!

_output_shapes	
::&""
 
_output_shapes
:
À:!#

_output_shapes	
:À:,$(
&
_output_shapes
:	: %

_output_shapes
:	:,&(
&
_output_shapes
:	: '

_output_shapes
::,((
&
_output_shapes
: : )

_output_shapes
: :,*(
&
_output_shapes
: @: +

_output_shapes
:@:,,(
&
_output_shapes
:@@: -

_output_shapes
:@:,.(
&
_output_shapes
:@ : /

_output_shapes
: :,0(
&
_output_shapes
: : 1

_output_shapes
::,2(
&
_output_shapes
:: 3

_output_shapes
::&4"
 
_output_shapes
:
À:!5

_output_shapes	
::&6"
 
_output_shapes
:
À:!7

_output_shapes	
::&8"
 
_output_shapes
:
À:!9

_output_shapes	
:À:,:(
&
_output_shapes
:	: ;

_output_shapes
:	:,<(
&
_output_shapes
:	: =

_output_shapes
::,>(
&
_output_shapes
: : ?

_output_shapes
: :,@(
&
_output_shapes
: @: A

_output_shapes
:@:,B(
&
_output_shapes
:@@: C

_output_shapes
:@:,D(
&
_output_shapes
:@ : E

_output_shapes
: :,F(
&
_output_shapes
: : G

_output_shapes
::,H(
&
_output_shapes
:: I

_output_shapes
::J

_output_shapes
: 

t
+__inference_sampling_9_layer_call_fn_101132
inputs_0
inputs_1
identity¢StatefulPartitionedCallÑ
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_sampling_9_layer_call_and_return_conditional_losses_99801p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ22
StatefulPartitionedCallStatefulPartitionedCall:R N
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/1
ö
u
F__inference_sampling_9_layer_call_and_return_conditional_losses_101158
inputs_0
inputs_1
identity=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
Shape_1Shapeinputs_0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask{
random_normal/shapePackstrided_slice:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:W
random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    Y
random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
"random_normal/RandomStandardNormalRandomStandardNormalrandom_normal/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
random_normalAddV2random_normal/mul:z:0random_normal/mean:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿJ
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?W
mulMulmul/x:output:0inputs_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿF
ExpExpmul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
mul_1MulExp:y:0random_normal:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
addAddV2inputs_0	mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
IdentityIdentityadd:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:R N
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/1

þ
E__inference_conv2d_106_layer_call_and_return_conditional_losses_99098

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


#__inference_VAE_layer_call_fn_99977
input_39!
unknown:	
	unknown_0:	#
	unknown_1:	
	unknown_2:#
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:
À
	unknown_8:	
	unknown_9:
À

unknown_10:	

unknown_11:
À

unknown_12:	À$

unknown_13:@@

unknown_14:@$

unknown_15:@ 

unknown_16: $

unknown_17: 

unknown_18:$

unknown_19:

unknown_20:
identity¢StatefulPartitionedCallò
StatefulPartitionedCallStatefulPartitionedCallinput_39unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP: *8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *G
fBR@
>__inference_VAE_layer_call_and_return_conditional_losses_99929w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:ÿÿÿÿÿÿÿÿÿPP: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP
"
_user_specified_name
input_39
ð
 
+__inference_conv2d_107_layer_call_fn_101680

inputs!
unknown: @
	unknown_0:@
identity¢StatefulPartitionedCallå
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_107_layer_call_and_return_conditional_losses_99115w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ

 : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
 
_user_specified_nameinputs
%
­
H__inference_sequential_27_layer_call_and_return_conditional_losses_99678
input_40*
conv2d_108_99654:@@
conv2d_108_99656:@*
conv2d_109_99660:@ 
conv2d_109_99662: *
conv2d_110_99666: 
conv2d_110_99668:*
conv2d_111_99672:
conv2d_111_99674:
identity¢"conv2d_108/StatefulPartitionedCall¢"conv2d_109/StatefulPartitionedCall¢"conv2d_110/StatefulPartitionedCall¢"conv2d_111/StatefulPartitionedCallæ
 up_sampling2d_52/PartitionedCallPartitionedCallinput_40*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_52_layer_call_and_return_conditional_losses_99332µ
"conv2d_108/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_52/PartitionedCall:output:0conv2d_108_99654conv2d_108_99656*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_108_layer_call_and_return_conditional_losses_99411
 up_sampling2d_53/PartitionedCallPartitionedCall+conv2d_108/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_53_layer_call_and_return_conditional_losses_99351µ
"conv2d_109/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_53/PartitionedCall:output:0conv2d_109_99660conv2d_109_99662*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_109_layer_call_and_return_conditional_losses_99429
 up_sampling2d_54/PartitionedCallPartitionedCall+conv2d_109/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_54_layer_call_and_return_conditional_losses_99370µ
"conv2d_110/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_54/PartitionedCall:output:0conv2d_110_99666conv2d_110_99668*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_110_layer_call_and_return_conditional_losses_99447
 up_sampling2d_55/PartitionedCallPartitionedCall+conv2d_110/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_55_layer_call_and_return_conditional_losses_99389µ
"conv2d_111/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_55/PartitionedCall:output:0conv2d_111_99672conv2d_111_99674*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_111_layer_call_and_return_conditional_losses_99465
IdentityIdentity+conv2d_111/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÚ
NoOpNoOp#^conv2d_108/StatefulPartitionedCall#^conv2d_109/StatefulPartitionedCall#^conv2d_110/StatefulPartitionedCall#^conv2d_111/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ@: : : : : : : : 2H
"conv2d_108/StatefulPartitionedCall"conv2d_108/StatefulPartitionedCall2H
"conv2d_109/StatefulPartitionedCall"conv2d_109/StatefulPartitionedCall2H
"conv2d_110/StatefulPartitionedCall"conv2d_110/StatefulPartitionedCall2H
"conv2d_111/StatefulPartitionedCall"conv2d_111/StatefulPartitionedCall:Y U
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
input_40
³
µ
H__inference_sequential_26_layer_call_and_return_conditional_losses_99316
conv2d_104_input*
conv2d_104_99295:	
conv2d_104_99297:	*
conv2d_105_99300:	
conv2d_105_99302:*
conv2d_106_99305: 
conv2d_106_99307: *
conv2d_107_99310: @
conv2d_107_99312:@
identity¢"conv2d_104/StatefulPartitionedCall¢"conv2d_105/StatefulPartitionedCall¢"conv2d_106/StatefulPartitionedCall¢"conv2d_107/StatefulPartitionedCall
"conv2d_104/StatefulPartitionedCallStatefulPartitionedCallconv2d_104_inputconv2d_104_99295conv2d_104_99297*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_104_layer_call_and_return_conditional_losses_99064¥
"conv2d_105/StatefulPartitionedCallStatefulPartitionedCall+conv2d_104/StatefulPartitionedCall:output:0conv2d_105_99300conv2d_105_99302*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_105_layer_call_and_return_conditional_losses_99081¥
"conv2d_106/StatefulPartitionedCallStatefulPartitionedCall+conv2d_105/StatefulPartitionedCall:output:0conv2d_106_99305conv2d_106_99307*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_106_layer_call_and_return_conditional_losses_99098¥
"conv2d_107/StatefulPartitionedCallStatefulPartitionedCall+conv2d_106/StatefulPartitionedCall:output:0conv2d_107_99310conv2d_107_99312*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_107_layer_call_and_return_conditional_losses_99115
IdentityIdentity+conv2d_107/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ú
NoOpNoOp#^conv2d_104/StatefulPartitionedCall#^conv2d_105/StatefulPartitionedCall#^conv2d_106/StatefulPartitionedCall#^conv2d_107/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿPP: : : : : : : : 2H
"conv2d_104/StatefulPartitionedCall"conv2d_104/StatefulPartitionedCall2H
"conv2d_105/StatefulPartitionedCall"conv2d_105/StatefulPartitionedCall2H
"conv2d_106/StatefulPartitionedCall"conv2d_106/StatefulPartitionedCall2H
"conv2d_107/StatefulPartitionedCall"conv2d_107/StatefulPartitionedCall:a ]
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP
*
_user_specified_nameconv2d_104_input

ÿ
F__inference_conv2d_104_layer_call_and_return_conditional_losses_101631

inputs8
conv2d_readvariableop_resource:	-
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:	*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:	*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿPP: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP
 
_user_specified_nameinputs
ò
ÿ
F__inference_conv2d_108_layer_call_and_return_conditional_losses_101728

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0«
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@{
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs

g
K__inference_up_sampling2d_54_layer_call_and_return_conditional_losses_99370

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:½
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:µ
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ÇÅ

?__inference_VAE_layer_call_and_return_conditional_losses_100781

inputsY
?encoder_sequential_26_conv2d_104_conv2d_readvariableop_resource:	N
@encoder_sequential_26_conv2d_104_biasadd_readvariableop_resource:	Y
?encoder_sequential_26_conv2d_105_conv2d_readvariableop_resource:	N
@encoder_sequential_26_conv2d_105_biasadd_readvariableop_resource:Y
?encoder_sequential_26_conv2d_106_conv2d_readvariableop_resource: N
@encoder_sequential_26_conv2d_106_biasadd_readvariableop_resource: Y
?encoder_sequential_26_conv2d_107_conv2d_readvariableop_resource: @N
@encoder_sequential_26_conv2d_107_biasadd_readvariableop_resource:@9
%z_mean_matmul_readvariableop_resource:
À5
&z_mean_biasadd_readvariableop_resource:	<
(z_log_var_matmul_readvariableop_resource:
À8
)z_log_var_biasadd_readvariableop_resource:	;
'dense_17_matmul_readvariableop_resource:
À7
(dense_17_biasadd_readvariableop_resource:	ÀY
?decoder_sequential_27_conv2d_108_conv2d_readvariableop_resource:@@N
@decoder_sequential_27_conv2d_108_biasadd_readvariableop_resource:@Y
?decoder_sequential_27_conv2d_109_conv2d_readvariableop_resource:@ N
@decoder_sequential_27_conv2d_109_biasadd_readvariableop_resource: Y
?decoder_sequential_27_conv2d_110_conv2d_readvariableop_resource: N
@decoder_sequential_27_conv2d_110_biasadd_readvariableop_resource:Y
?decoder_sequential_27_conv2d_111_conv2d_readvariableop_resource:N
@decoder_sequential_27_conv2d_111_biasadd_readvariableop_resource:
identity

identity_1¢7decoder/sequential_27/conv2d_108/BiasAdd/ReadVariableOp¢6decoder/sequential_27/conv2d_108/Conv2D/ReadVariableOp¢7decoder/sequential_27/conv2d_109/BiasAdd/ReadVariableOp¢6decoder/sequential_27/conv2d_109/Conv2D/ReadVariableOp¢7decoder/sequential_27/conv2d_110/BiasAdd/ReadVariableOp¢6decoder/sequential_27/conv2d_110/Conv2D/ReadVariableOp¢7decoder/sequential_27/conv2d_111/BiasAdd/ReadVariableOp¢6decoder/sequential_27/conv2d_111/Conv2D/ReadVariableOp¢dense_17/BiasAdd/ReadVariableOp¢dense_17/MatMul/ReadVariableOp¢7encoder/sequential_26/conv2d_104/BiasAdd/ReadVariableOp¢6encoder/sequential_26/conv2d_104/Conv2D/ReadVariableOp¢7encoder/sequential_26/conv2d_105/BiasAdd/ReadVariableOp¢6encoder/sequential_26/conv2d_105/Conv2D/ReadVariableOp¢7encoder/sequential_26/conv2d_106/BiasAdd/ReadVariableOp¢6encoder/sequential_26/conv2d_106/Conv2D/ReadVariableOp¢7encoder/sequential_26/conv2d_107/BiasAdd/ReadVariableOp¢6encoder/sequential_26/conv2d_107/Conv2D/ReadVariableOp¢ z_log_var/BiasAdd/ReadVariableOp¢z_log_var/MatMul/ReadVariableOp¢z_mean/BiasAdd/ReadVariableOp¢z_mean/MatMul/ReadVariableOp¾
6encoder/sequential_26/conv2d_104/Conv2D/ReadVariableOpReadVariableOp?encoder_sequential_26_conv2d_104_conv2d_readvariableop_resource*&
_output_shapes
:	*
dtype0Û
'encoder/sequential_26/conv2d_104/Conv2DConv2Dinputs>encoder/sequential_26/conv2d_104/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	*
paddingSAME*
strides
´
7encoder/sequential_26/conv2d_104/BiasAdd/ReadVariableOpReadVariableOp@encoder_sequential_26_conv2d_104_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0à
(encoder/sequential_26/conv2d_104/BiasAddBiasAdd0encoder/sequential_26/conv2d_104/Conv2D:output:0?encoder/sequential_26/conv2d_104/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	
%encoder/sequential_26/conv2d_104/ReluRelu1encoder/sequential_26/conv2d_104/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	¾
6encoder/sequential_26/conv2d_105/Conv2D/ReadVariableOpReadVariableOp?encoder_sequential_26_conv2d_105_conv2d_readvariableop_resource*&
_output_shapes
:	*
dtype0
'encoder/sequential_26/conv2d_105/Conv2DConv2D3encoder/sequential_26/conv2d_104/Relu:activations:0>encoder/sequential_26/conv2d_105/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
´
7encoder/sequential_26/conv2d_105/BiasAdd/ReadVariableOpReadVariableOp@encoder_sequential_26_conv2d_105_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0à
(encoder/sequential_26/conv2d_105/BiasAddBiasAdd0encoder/sequential_26/conv2d_105/Conv2D:output:0?encoder/sequential_26/conv2d_105/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%encoder/sequential_26/conv2d_105/ReluRelu1encoder/sequential_26/conv2d_105/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
6encoder/sequential_26/conv2d_106/Conv2D/ReadVariableOpReadVariableOp?encoder_sequential_26_conv2d_106_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
'encoder/sequential_26/conv2d_106/Conv2DConv2D3encoder/sequential_26/conv2d_105/Relu:activations:0>encoder/sequential_26/conv2d_106/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 *
paddingSAME*
strides
´
7encoder/sequential_26/conv2d_106/BiasAdd/ReadVariableOpReadVariableOp@encoder_sequential_26_conv2d_106_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0à
(encoder/sequential_26/conv2d_106/BiasAddBiasAdd0encoder/sequential_26/conv2d_106/Conv2D:output:0?encoder/sequential_26/conv2d_106/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
%encoder/sequential_26/conv2d_106/ReluRelu1encoder/sequential_26/conv2d_106/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 ¾
6encoder/sequential_26/conv2d_107/Conv2D/ReadVariableOpReadVariableOp?encoder_sequential_26_conv2d_107_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0
'encoder/sequential_26/conv2d_107/Conv2DConv2D3encoder/sequential_26/conv2d_106/Relu:activations:0>encoder/sequential_26/conv2d_107/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
´
7encoder/sequential_26/conv2d_107/BiasAdd/ReadVariableOpReadVariableOp@encoder_sequential_26_conv2d_107_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0à
(encoder/sequential_26/conv2d_107/BiasAddBiasAdd0encoder/sequential_26/conv2d_107/Conv2D:output:0?encoder/sequential_26/conv2d_107/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
%encoder/sequential_26/conv2d_107/ReluRelu1encoder/sequential_26/conv2d_107/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@a
flatten_13/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   
flatten_13/ReshapeReshape3encoder/sequential_26/conv2d_107/Relu:activations:0flatten_13/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
z_mean/MatMul/ReadVariableOpReadVariableOp%z_mean_matmul_readvariableop_resource* 
_output_shapes
:
À*
dtype0
z_mean/MatMulMatMulflatten_13/Reshape:output:0$z_mean/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
z_mean/BiasAdd/ReadVariableOpReadVariableOp&z_mean_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
z_mean/BiasAddBiasAddz_mean/MatMul:product:0%z_mean/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
z_log_var/MatMul/ReadVariableOpReadVariableOp(z_log_var_matmul_readvariableop_resource* 
_output_shapes
:
À*
dtype0
z_log_var/MatMulMatMulflatten_13/Reshape:output:0'z_log_var/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 z_log_var/BiasAdd/ReadVariableOpReadVariableOp)z_log_var_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
z_log_var/BiasAddBiasAddz_log_var/MatMul:product:0(z_log_var/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
sampling_9/ShapeShapez_mean/BiasAdd:output:0*
T0*
_output_shapes
:h
sampling_9/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 sampling_9/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 sampling_9/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
sampling_9/strided_sliceStridedSlicesampling_9/Shape:output:0'sampling_9/strided_slice/stack:output:0)sampling_9/strided_slice/stack_1:output:0)sampling_9/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
sampling_9/Shape_1Shapez_mean/BiasAdd:output:0*
T0*
_output_shapes
:j
 sampling_9/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:l
"sampling_9/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"sampling_9/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
sampling_9/strided_slice_1StridedSlicesampling_9/Shape_1:output:0)sampling_9/strided_slice_1/stack:output:0+sampling_9/strided_slice_1/stack_1:output:0+sampling_9/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
sampling_9/random_normal/shapePack!sampling_9/strided_slice:output:0#sampling_9/strided_slice_1:output:0*
N*
T0*
_output_shapes
:b
sampling_9/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    d
sampling_9/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?®
-sampling_9/random_normal/RandomStandardNormalRandomStandardNormal'sampling_9/random_normal/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0¸
sampling_9/random_normal/mulMul6sampling_9/random_normal/RandomStandardNormal:output:0(sampling_9/random_normal/stddev:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
sampling_9/random_normalAddV2 sampling_9/random_normal/mul:z:0&sampling_9/random_normal/mean:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
sampling_9/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
sampling_9/mulMulsampling_9/mul/x:output:0z_log_var/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
sampling_9/ExpExpsampling_9/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
sampling_9/mul_1Mulsampling_9/Exp:y:0sampling_9/random_normal:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
sampling_9/addAddV2z_mean/BiasAdd:output:0sampling_9/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_17/MatMul/ReadVariableOpReadVariableOp'dense_17_matmul_readvariableop_resource* 
_output_shapes
:
À*
dtype0
dense_17/MatMulMatMulsampling_9/add:z:0&dense_17/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
dense_17/BiasAdd/ReadVariableOpReadVariableOp(dense_17_biasadd_readvariableop_resource*
_output_shapes	
:À*
dtype0
dense_17/BiasAddBiasAdddense_17/MatMul:product:0'dense_17/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀc
dense_17/ReluReludense_17/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ[
reshape_13/ShapeShapedense_17/Relu:activations:0*
T0*
_output_shapes
:h
reshape_13/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 reshape_13/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 reshape_13/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
reshape_13/strided_sliceStridedSlicereshape_13/Shape:output:0'reshape_13/strided_slice/stack:output:0)reshape_13/strided_slice/stack_1:output:0)reshape_13/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
reshape_13/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :\
reshape_13/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :\
reshape_13/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :@à
reshape_13/Reshape/shapePack!reshape_13/strided_slice:output:0#reshape_13/Reshape/shape/1:output:0#reshape_13/Reshape/shape/2:output:0#reshape_13/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:
reshape_13/ReshapeReshapedense_17/Relu:activations:0!reshape_13/Reshape/shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@}
,decoder/sequential_27/up_sampling2d_52/ConstConst*
_output_shapes
:*
dtype0*
valueB"      
.decoder/sequential_27/up_sampling2d_52/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Æ
*decoder/sequential_27/up_sampling2d_52/mulMul5decoder/sequential_27/up_sampling2d_52/Const:output:07decoder/sequential_27/up_sampling2d_52/Const_1:output:0*
T0*
_output_shapes
:ý
Cdecoder/sequential_27/up_sampling2d_52/resize/ResizeNearestNeighborResizeNearestNeighborreshape_13/Reshape:output:0.decoder/sequential_27/up_sampling2d_52/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

@*
half_pixel_centers(¾
6decoder/sequential_27/conv2d_108/Conv2D/ReadVariableOpReadVariableOp?decoder_sequential_27_conv2d_108_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0©
'decoder/sequential_27/conv2d_108/Conv2DConv2DTdecoder/sequential_27/up_sampling2d_52/resize/ResizeNearestNeighbor:resized_images:0>decoder/sequential_27/conv2d_108/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

@*
paddingSAME*
strides
´
7decoder/sequential_27/conv2d_108/BiasAdd/ReadVariableOpReadVariableOp@decoder_sequential_27_conv2d_108_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0à
(decoder/sequential_27/conv2d_108/BiasAddBiasAdd0decoder/sequential_27/conv2d_108/Conv2D:output:0?decoder/sequential_27/conv2d_108/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

@
%decoder/sequential_27/conv2d_108/ReluRelu1decoder/sequential_27/conv2d_108/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

@}
,decoder/sequential_27/up_sampling2d_53/ConstConst*
_output_shapes
:*
dtype0*
valueB"
   
   
.decoder/sequential_27/up_sampling2d_53/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Æ
*decoder/sequential_27/up_sampling2d_53/mulMul5decoder/sequential_27/up_sampling2d_53/Const:output:07decoder/sequential_27/up_sampling2d_53/Const_1:output:0*
T0*
_output_shapes
:
Cdecoder/sequential_27/up_sampling2d_53/resize/ResizeNearestNeighborResizeNearestNeighbor3decoder/sequential_27/conv2d_108/Relu:activations:0.decoder/sequential_27/up_sampling2d_53/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
half_pixel_centers(¾
6decoder/sequential_27/conv2d_109/Conv2D/ReadVariableOpReadVariableOp?decoder_sequential_27_conv2d_109_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0©
'decoder/sequential_27/conv2d_109/Conv2DConv2DTdecoder/sequential_27/up_sampling2d_53/resize/ResizeNearestNeighbor:resized_images:0>decoder/sequential_27/conv2d_109/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
paddingSAME*
strides
´
7decoder/sequential_27/conv2d_109/BiasAdd/ReadVariableOpReadVariableOp@decoder_sequential_27_conv2d_109_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0à
(decoder/sequential_27/conv2d_109/BiasAddBiasAdd0decoder/sequential_27/conv2d_109/Conv2D:output:0?decoder/sequential_27/conv2d_109/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
%decoder/sequential_27/conv2d_109/ReluRelu1decoder/sequential_27/conv2d_109/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ }
,decoder/sequential_27/up_sampling2d_54/ConstConst*
_output_shapes
:*
dtype0*
valueB"      
.decoder/sequential_27/up_sampling2d_54/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Æ
*decoder/sequential_27/up_sampling2d_54/mulMul5decoder/sequential_27/up_sampling2d_54/Const:output:07decoder/sequential_27/up_sampling2d_54/Const_1:output:0*
T0*
_output_shapes
:
Cdecoder/sequential_27/up_sampling2d_54/resize/ResizeNearestNeighborResizeNearestNeighbor3decoder/sequential_27/conv2d_109/Relu:activations:0.decoder/sequential_27/up_sampling2d_54/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(( *
half_pixel_centers(¾
6decoder/sequential_27/conv2d_110/Conv2D/ReadVariableOpReadVariableOp?decoder_sequential_27_conv2d_110_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0©
'decoder/sequential_27/conv2d_110/Conv2DConv2DTdecoder/sequential_27/up_sampling2d_54/resize/ResizeNearestNeighbor:resized_images:0>decoder/sequential_27/conv2d_110/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((*
paddingSAME*
strides
´
7decoder/sequential_27/conv2d_110/BiasAdd/ReadVariableOpReadVariableOp@decoder_sequential_27_conv2d_110_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0à
(decoder/sequential_27/conv2d_110/BiasAddBiasAdd0decoder/sequential_27/conv2d_110/Conv2D:output:0?decoder/sequential_27/conv2d_110/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((
%decoder/sequential_27/conv2d_110/ReluRelu1decoder/sequential_27/conv2d_110/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((}
,decoder/sequential_27/up_sampling2d_55/ConstConst*
_output_shapes
:*
dtype0*
valueB"(   (   
.decoder/sequential_27/up_sampling2d_55/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Æ
*decoder/sequential_27/up_sampling2d_55/mulMul5decoder/sequential_27/up_sampling2d_55/Const:output:07decoder/sequential_27/up_sampling2d_55/Const_1:output:0*
T0*
_output_shapes
:
Cdecoder/sequential_27/up_sampling2d_55/resize/ResizeNearestNeighborResizeNearestNeighbor3decoder/sequential_27/conv2d_110/Relu:activations:0.decoder/sequential_27/up_sampling2d_55/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP*
half_pixel_centers(¾
6decoder/sequential_27/conv2d_111/Conv2D/ReadVariableOpReadVariableOp?decoder_sequential_27_conv2d_111_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0©
'decoder/sequential_27/conv2d_111/Conv2DConv2DTdecoder/sequential_27/up_sampling2d_55/resize/ResizeNearestNeighbor:resized_images:0>decoder/sequential_27/conv2d_111/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP*
paddingSAME*
strides
´
7decoder/sequential_27/conv2d_111/BiasAdd/ReadVariableOpReadVariableOp@decoder_sequential_27_conv2d_111_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0à
(decoder/sequential_27/conv2d_111/BiasAddBiasAdd0decoder/sequential_27/conv2d_111/Conv2D:output:0?decoder/sequential_27/conv2d_111/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP 
(decoder/sequential_27/conv2d_111/SigmoidSigmoid1decoder/sequential_27/conv2d_111/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPPa
kl_9/SquareSquarez_mean/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿo
kl_9/subSubz_log_var/BiasAdd:output:0kl_9/Square:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
kl_9/ExpExpz_log_var/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`

kl_9/sub_1Subkl_9/sub:z:0kl_9/Exp:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿO

kl_9/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?i
kl_9/addAddV2kl_9/sub_1:z:0kl_9/add/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[

kl_9/ConstConst*
_output_shapes
:*
dtype0*
valueB"       U
	kl_9/MeanMeankl_9/add:z:0kl_9/Const:output:0*
T0*
_output_shapes
: O

kl_9/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL½Y
kl_9/mulMulkl_9/mul/x:output:0kl_9/Mean:output:0*
T0*
_output_shapes
: 
IdentityIdentity,decoder/sequential_27/conv2d_111/Sigmoid:y:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPPL

Identity_1Identitykl_9/mul:z:0^NoOp*
T0*
_output_shapes
: ¥	
NoOpNoOp8^decoder/sequential_27/conv2d_108/BiasAdd/ReadVariableOp7^decoder/sequential_27/conv2d_108/Conv2D/ReadVariableOp8^decoder/sequential_27/conv2d_109/BiasAdd/ReadVariableOp7^decoder/sequential_27/conv2d_109/Conv2D/ReadVariableOp8^decoder/sequential_27/conv2d_110/BiasAdd/ReadVariableOp7^decoder/sequential_27/conv2d_110/Conv2D/ReadVariableOp8^decoder/sequential_27/conv2d_111/BiasAdd/ReadVariableOp7^decoder/sequential_27/conv2d_111/Conv2D/ReadVariableOp ^dense_17/BiasAdd/ReadVariableOp^dense_17/MatMul/ReadVariableOp8^encoder/sequential_26/conv2d_104/BiasAdd/ReadVariableOp7^encoder/sequential_26/conv2d_104/Conv2D/ReadVariableOp8^encoder/sequential_26/conv2d_105/BiasAdd/ReadVariableOp7^encoder/sequential_26/conv2d_105/Conv2D/ReadVariableOp8^encoder/sequential_26/conv2d_106/BiasAdd/ReadVariableOp7^encoder/sequential_26/conv2d_106/Conv2D/ReadVariableOp8^encoder/sequential_26/conv2d_107/BiasAdd/ReadVariableOp7^encoder/sequential_26/conv2d_107/Conv2D/ReadVariableOp!^z_log_var/BiasAdd/ReadVariableOp ^z_log_var/MatMul/ReadVariableOp^z_mean/BiasAdd/ReadVariableOp^z_mean/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:ÿÿÿÿÿÿÿÿÿPP: : : : : : : : : : : : : : : : : : : : : : 2r
7decoder/sequential_27/conv2d_108/BiasAdd/ReadVariableOp7decoder/sequential_27/conv2d_108/BiasAdd/ReadVariableOp2p
6decoder/sequential_27/conv2d_108/Conv2D/ReadVariableOp6decoder/sequential_27/conv2d_108/Conv2D/ReadVariableOp2r
7decoder/sequential_27/conv2d_109/BiasAdd/ReadVariableOp7decoder/sequential_27/conv2d_109/BiasAdd/ReadVariableOp2p
6decoder/sequential_27/conv2d_109/Conv2D/ReadVariableOp6decoder/sequential_27/conv2d_109/Conv2D/ReadVariableOp2r
7decoder/sequential_27/conv2d_110/BiasAdd/ReadVariableOp7decoder/sequential_27/conv2d_110/BiasAdd/ReadVariableOp2p
6decoder/sequential_27/conv2d_110/Conv2D/ReadVariableOp6decoder/sequential_27/conv2d_110/Conv2D/ReadVariableOp2r
7decoder/sequential_27/conv2d_111/BiasAdd/ReadVariableOp7decoder/sequential_27/conv2d_111/BiasAdd/ReadVariableOp2p
6decoder/sequential_27/conv2d_111/Conv2D/ReadVariableOp6decoder/sequential_27/conv2d_111/Conv2D/ReadVariableOp2B
dense_17/BiasAdd/ReadVariableOpdense_17/BiasAdd/ReadVariableOp2@
dense_17/MatMul/ReadVariableOpdense_17/MatMul/ReadVariableOp2r
7encoder/sequential_26/conv2d_104/BiasAdd/ReadVariableOp7encoder/sequential_26/conv2d_104/BiasAdd/ReadVariableOp2p
6encoder/sequential_26/conv2d_104/Conv2D/ReadVariableOp6encoder/sequential_26/conv2d_104/Conv2D/ReadVariableOp2r
7encoder/sequential_26/conv2d_105/BiasAdd/ReadVariableOp7encoder/sequential_26/conv2d_105/BiasAdd/ReadVariableOp2p
6encoder/sequential_26/conv2d_105/Conv2D/ReadVariableOp6encoder/sequential_26/conv2d_105/Conv2D/ReadVariableOp2r
7encoder/sequential_26/conv2d_106/BiasAdd/ReadVariableOp7encoder/sequential_26/conv2d_106/BiasAdd/ReadVariableOp2p
6encoder/sequential_26/conv2d_106/Conv2D/ReadVariableOp6encoder/sequential_26/conv2d_106/Conv2D/ReadVariableOp2r
7encoder/sequential_26/conv2d_107/BiasAdd/ReadVariableOp7encoder/sequential_26/conv2d_107/BiasAdd/ReadVariableOp2p
6encoder/sequential_26/conv2d_107/Conv2D/ReadVariableOp6encoder/sequential_26/conv2d_107/Conv2D/ReadVariableOp2D
 z_log_var/BiasAdd/ReadVariableOp z_log_var/BiasAdd/ReadVariableOp2B
z_log_var/MatMul/ReadVariableOpz_log_var/MatMul/ReadVariableOp2>
z_mean/BiasAdd/ReadVariableOpz_mean/BiasAdd/ReadVariableOp2<
z_mean/MatMul/ReadVariableOpz_mean/MatMul/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP
 
_user_specified_nameinputs
§

æ
-__inference_sequential_26_layer_call_fn_99141
conv2d_104_input!
unknown:	
	unknown_0:	#
	unknown_1:	
	unknown_2:#
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
identity¢StatefulPartitionedCallÀ
StatefulPartitionedCallStatefulPartitionedCallconv2d_104_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_26_layer_call_and_return_conditional_losses_99122w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿPP: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP
*
_user_specified_nameconv2d_104_input
2
Ú
C__inference_encoder_layer_call_and_return_conditional_losses_100187

inputsQ
7sequential_26_conv2d_104_conv2d_readvariableop_resource:	F
8sequential_26_conv2d_104_biasadd_readvariableop_resource:	Q
7sequential_26_conv2d_105_conv2d_readvariableop_resource:	F
8sequential_26_conv2d_105_biasadd_readvariableop_resource:Q
7sequential_26_conv2d_106_conv2d_readvariableop_resource: F
8sequential_26_conv2d_106_biasadd_readvariableop_resource: Q
7sequential_26_conv2d_107_conv2d_readvariableop_resource: @F
8sequential_26_conv2d_107_biasadd_readvariableop_resource:@
identity¢/sequential_26/conv2d_104/BiasAdd/ReadVariableOp¢.sequential_26/conv2d_104/Conv2D/ReadVariableOp¢/sequential_26/conv2d_105/BiasAdd/ReadVariableOp¢.sequential_26/conv2d_105/Conv2D/ReadVariableOp¢/sequential_26/conv2d_106/BiasAdd/ReadVariableOp¢.sequential_26/conv2d_106/Conv2D/ReadVariableOp¢/sequential_26/conv2d_107/BiasAdd/ReadVariableOp¢.sequential_26/conv2d_107/Conv2D/ReadVariableOp®
.sequential_26/conv2d_104/Conv2D/ReadVariableOpReadVariableOp7sequential_26_conv2d_104_conv2d_readvariableop_resource*&
_output_shapes
:	*
dtype0Ë
sequential_26/conv2d_104/Conv2DConv2Dinputs6sequential_26/conv2d_104/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	*
paddingSAME*
strides
¤
/sequential_26/conv2d_104/BiasAdd/ReadVariableOpReadVariableOp8sequential_26_conv2d_104_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0È
 sequential_26/conv2d_104/BiasAddBiasAdd(sequential_26/conv2d_104/Conv2D:output:07sequential_26/conv2d_104/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	
sequential_26/conv2d_104/ReluRelu)sequential_26/conv2d_104/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	®
.sequential_26/conv2d_105/Conv2D/ReadVariableOpReadVariableOp7sequential_26_conv2d_105_conv2d_readvariableop_resource*&
_output_shapes
:	*
dtype0ð
sequential_26/conv2d_105/Conv2DConv2D+sequential_26/conv2d_104/Relu:activations:06sequential_26/conv2d_105/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
¤
/sequential_26/conv2d_105/BiasAdd/ReadVariableOpReadVariableOp8sequential_26_conv2d_105_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0È
 sequential_26/conv2d_105/BiasAddBiasAdd(sequential_26/conv2d_105/Conv2D:output:07sequential_26/conv2d_105/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
sequential_26/conv2d_105/ReluRelu)sequential_26/conv2d_105/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
.sequential_26/conv2d_106/Conv2D/ReadVariableOpReadVariableOp7sequential_26_conv2d_106_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0ð
sequential_26/conv2d_106/Conv2DConv2D+sequential_26/conv2d_105/Relu:activations:06sequential_26/conv2d_106/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 *
paddingSAME*
strides
¤
/sequential_26/conv2d_106/BiasAdd/ReadVariableOpReadVariableOp8sequential_26_conv2d_106_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0È
 sequential_26/conv2d_106/BiasAddBiasAdd(sequential_26/conv2d_106/Conv2D:output:07sequential_26/conv2d_106/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
sequential_26/conv2d_106/ReluRelu)sequential_26/conv2d_106/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 ®
.sequential_26/conv2d_107/Conv2D/ReadVariableOpReadVariableOp7sequential_26_conv2d_107_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0ð
sequential_26/conv2d_107/Conv2DConv2D+sequential_26/conv2d_106/Relu:activations:06sequential_26/conv2d_107/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
¤
/sequential_26/conv2d_107/BiasAdd/ReadVariableOpReadVariableOp8sequential_26_conv2d_107_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0È
 sequential_26/conv2d_107/BiasAddBiasAdd(sequential_26/conv2d_107/Conv2D:output:07sequential_26/conv2d_107/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
sequential_26/conv2d_107/ReluRelu)sequential_26/conv2d_107/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
IdentityIdentity+sequential_26/conv2d_107/Relu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ò
NoOpNoOp0^sequential_26/conv2d_104/BiasAdd/ReadVariableOp/^sequential_26/conv2d_104/Conv2D/ReadVariableOp0^sequential_26/conv2d_105/BiasAdd/ReadVariableOp/^sequential_26/conv2d_105/Conv2D/ReadVariableOp0^sequential_26/conv2d_106/BiasAdd/ReadVariableOp/^sequential_26/conv2d_106/Conv2D/ReadVariableOp0^sequential_26/conv2d_107/BiasAdd/ReadVariableOp/^sequential_26/conv2d_107/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿPP: : : : : : : : 2b
/sequential_26/conv2d_104/BiasAdd/ReadVariableOp/sequential_26/conv2d_104/BiasAdd/ReadVariableOp2`
.sequential_26/conv2d_104/Conv2D/ReadVariableOp.sequential_26/conv2d_104/Conv2D/ReadVariableOp2b
/sequential_26/conv2d_105/BiasAdd/ReadVariableOp/sequential_26/conv2d_105/BiasAdd/ReadVariableOp2`
.sequential_26/conv2d_105/Conv2D/ReadVariableOp.sequential_26/conv2d_105/Conv2D/ReadVariableOp2b
/sequential_26/conv2d_106/BiasAdd/ReadVariableOp/sequential_26/conv2d_106/BiasAdd/ReadVariableOp2`
.sequential_26/conv2d_106/Conv2D/ReadVariableOp.sequential_26/conv2d_106/Conv2D/ReadVariableOp2b
/sequential_26/conv2d_107/BiasAdd/ReadVariableOp/sequential_26/conv2d_107/BiasAdd/ReadVariableOp2`
.sequential_26/conv2d_107/Conv2D/ReadVariableOp.sequential_26/conv2d_107/Conv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP
 
_user_specified_nameinputs
É(

I__inference_sequential_26_layer_call_and_return_conditional_losses_101441

inputsC
)conv2d_104_conv2d_readvariableop_resource:	8
*conv2d_104_biasadd_readvariableop_resource:	C
)conv2d_105_conv2d_readvariableop_resource:	8
*conv2d_105_biasadd_readvariableop_resource:C
)conv2d_106_conv2d_readvariableop_resource: 8
*conv2d_106_biasadd_readvariableop_resource: C
)conv2d_107_conv2d_readvariableop_resource: @8
*conv2d_107_biasadd_readvariableop_resource:@
identity¢!conv2d_104/BiasAdd/ReadVariableOp¢ conv2d_104/Conv2D/ReadVariableOp¢!conv2d_105/BiasAdd/ReadVariableOp¢ conv2d_105/Conv2D/ReadVariableOp¢!conv2d_106/BiasAdd/ReadVariableOp¢ conv2d_106/Conv2D/ReadVariableOp¢!conv2d_107/BiasAdd/ReadVariableOp¢ conv2d_107/Conv2D/ReadVariableOp
 conv2d_104/Conv2D/ReadVariableOpReadVariableOp)conv2d_104_conv2d_readvariableop_resource*&
_output_shapes
:	*
dtype0¯
conv2d_104/Conv2DConv2Dinputs(conv2d_104/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	*
paddingSAME*
strides

!conv2d_104/BiasAdd/ReadVariableOpReadVariableOp*conv2d_104_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0
conv2d_104/BiasAddBiasAddconv2d_104/Conv2D:output:0)conv2d_104/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	n
conv2d_104/ReluReluconv2d_104/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	
 conv2d_105/Conv2D/ReadVariableOpReadVariableOp)conv2d_105_conv2d_readvariableop_resource*&
_output_shapes
:	*
dtype0Æ
conv2d_105/Conv2DConv2Dconv2d_104/Relu:activations:0(conv2d_105/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides

!conv2d_105/BiasAdd/ReadVariableOpReadVariableOp*conv2d_105_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_105/BiasAddBiasAddconv2d_105/Conv2D:output:0)conv2d_105/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
conv2d_105/ReluReluconv2d_105/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 conv2d_106/Conv2D/ReadVariableOpReadVariableOp)conv2d_106_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Æ
conv2d_106/Conv2DConv2Dconv2d_105/Relu:activations:0(conv2d_106/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 *
paddingSAME*
strides

!conv2d_106/BiasAdd/ReadVariableOpReadVariableOp*conv2d_106_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_106/BiasAddBiasAddconv2d_106/Conv2D:output:0)conv2d_106/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 n
conv2d_106/ReluReluconv2d_106/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
 conv2d_107/Conv2D/ReadVariableOpReadVariableOp)conv2d_107_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Æ
conv2d_107/Conv2DConv2Dconv2d_106/Relu:activations:0(conv2d_107/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides

!conv2d_107/BiasAdd/ReadVariableOpReadVariableOp*conv2d_107_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_107/BiasAddBiasAddconv2d_107/Conv2D:output:0)conv2d_107/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
conv2d_107/ReluReluconv2d_107/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@t
IdentityIdentityconv2d_107/Relu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@â
NoOpNoOp"^conv2d_104/BiasAdd/ReadVariableOp!^conv2d_104/Conv2D/ReadVariableOp"^conv2d_105/BiasAdd/ReadVariableOp!^conv2d_105/Conv2D/ReadVariableOp"^conv2d_106/BiasAdd/ReadVariableOp!^conv2d_106/Conv2D/ReadVariableOp"^conv2d_107/BiasAdd/ReadVariableOp!^conv2d_107/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿPP: : : : : : : : 2F
!conv2d_104/BiasAdd/ReadVariableOp!conv2d_104/BiasAdd/ReadVariableOp2D
 conv2d_104/Conv2D/ReadVariableOp conv2d_104/Conv2D/ReadVariableOp2F
!conv2d_105/BiasAdd/ReadVariableOp!conv2d_105/BiasAdd/ReadVariableOp2D
 conv2d_105/Conv2D/ReadVariableOp conv2d_105/Conv2D/ReadVariableOp2F
!conv2d_106/BiasAdd/ReadVariableOp!conv2d_106/BiasAdd/ReadVariableOp2D
 conv2d_106/Conv2D/ReadVariableOp conv2d_106/Conv2D/ReadVariableOp2F
!conv2d_107/BiasAdd/ReadVariableOp!conv2d_107/BiasAdd/ReadVariableOp2D
 conv2d_107/Conv2D/ReadVariableOp conv2d_107/Conv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP
 
_user_specified_nameinputs
ð
 
+__inference_conv2d_104_layer_call_fn_101620

inputs!
unknown:	
	unknown_0:	
identity¢StatefulPartitionedCallå
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_104_layer_call_and_return_conditional_losses_99064w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿPP: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP
 
_user_specified_nameinputs
¹
 
+__inference_conv2d_108_layer_call_fn_101717

inputs!
unknown:@@
	unknown_0:@
identity¢StatefulPartitionedCall÷
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_108_layer_call_and_return_conditional_losses_99411
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Î
a
E__inference_reshape_13_layer_call_and_return_conditional_losses_99834

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :@©
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:l
ReshapeReshapeinputsReshape/shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
IdentityIdentityReshape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿÀ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 
_user_specified_nameinputs
ä1
Ì
?__inference_VAE_layer_call_and_return_conditional_losses_100318

inputs(
encoder_100261:	
encoder_100263:	(
encoder_100265:	
encoder_100267:(
encoder_100269: 
encoder_100271: (
encoder_100273: @
encoder_100275:@!
z_mean_100279:
À
z_mean_100281:	$
z_log_var_100284:
À
z_log_var_100286:	#
dense_17_100290:
À
dense_17_100292:	À(
decoder_100296:@@
decoder_100298:@(
decoder_100300:@ 
decoder_100302: (
decoder_100304: 
decoder_100306:(
decoder_100308:
decoder_100310:
identity

identity_1¢decoder/StatefulPartitionedCall¢ dense_17/StatefulPartitionedCall¢encoder/StatefulPartitionedCall¢"sampling_9/StatefulPartitionedCall¢!z_log_var/StatefulPartitionedCall¢z_mean/StatefulPartitionedCallã
encoder/StatefulPartitionedCallStatefulPartitionedCallinputsencoder_100261encoder_100263encoder_100265encoder_100267encoder_100269encoder_100271encoder_100273encoder_100275*
Tin
2	*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_encoder_layer_call_and_return_conditional_losses_100187á
flatten_13/PartitionedCallPartitionedCall(encoder/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_flatten_13_layer_call_and_return_conditional_losses_99741
z_mean/StatefulPartitionedCallStatefulPartitionedCall#flatten_13/PartitionedCall:output:0z_mean_100279z_mean_100281*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_z_mean_layer_call_and_return_conditional_losses_99753
!z_log_var/StatefulPartitionedCallStatefulPartitionedCall#flatten_13/PartitionedCall:output:0z_log_var_100284z_log_var_100286*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_z_log_var_layer_call_and_return_conditional_losses_99769
"sampling_9/StatefulPartitionedCallStatefulPartitionedCall'z_mean/StatefulPartitionedCall:output:0*z_log_var/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_sampling_9_layer_call_and_return_conditional_losses_99801
 dense_17/StatefulPartitionedCallStatefulPartitionedCall+sampling_9/StatefulPartitionedCall:output:0dense_17_100290dense_17_100292*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_17_layer_call_and_return_conditional_losses_99814é
reshape_13/PartitionedCallPartitionedCall)dense_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_reshape_13_layer_call_and_return_conditional_losses_99834
decoder/StatefulPartitionedCallStatefulPartitionedCall#reshape_13/PartitionedCall:output:0decoder_100296decoder_100298decoder_100300decoder_100302decoder_100304decoder_100306decoder_100308decoder_100310*
Tin
2	*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_decoder_layer_call_and_return_conditional_losses_100063ï
kl_9/PartitionedCallPartitionedCall'z_mean/StatefulPartitionedCall:output:0*z_log_var/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_kl_9_layer_call_and_return_conditional_losses_99917Ç
add_loss_6/PartitionedCallPartitionedCallkl_9/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: : * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_add_loss_6_layer_call_and_return_conditional_losses_99924
IdentityIdentity(decoder/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPPc

Identity_1Identity#add_loss_6/PartitionedCall:output:1^NoOp*
T0*
_output_shapes
: 
NoOpNoOp ^decoder/StatefulPartitionedCall!^dense_17/StatefulPartitionedCall ^encoder/StatefulPartitionedCall#^sampling_9/StatefulPartitionedCall"^z_log_var/StatefulPartitionedCall^z_mean/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:ÿÿÿÿÿÿÿÿÿPP: : : : : : : : : : : : : : : : : : : : : : 2B
decoder/StatefulPartitionedCalldecoder/StatefulPartitionedCall2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2B
encoder/StatefulPartitionedCallencoder/StatefulPartitionedCall2H
"sampling_9/StatefulPartitionedCall"sampling_9/StatefulPartitionedCall2F
!z_log_var/StatefulPartitionedCall!z_log_var/StatefulPartitionedCall2@
z_mean/StatefulPartitionedCallz_mean/StatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP
 
_user_specified_nameinputs
§

ø
D__inference_dense_17_layer_call_and_return_conditional_losses_101178

inputs2
matmul_readvariableop_resource:
À.
biasadd_readvariableop_resource:	À
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
À*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:À*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ê1
Î
?__inference_VAE_layer_call_and_return_conditional_losses_100536
input_39(
encoder_100479:	
encoder_100481:	(
encoder_100483:	
encoder_100485:(
encoder_100487: 
encoder_100489: (
encoder_100491: @
encoder_100493:@!
z_mean_100497:
À
z_mean_100499:	$
z_log_var_100502:
À
z_log_var_100504:	#
dense_17_100508:
À
dense_17_100510:	À(
decoder_100514:@@
decoder_100516:@(
decoder_100518:@ 
decoder_100520: (
decoder_100522: 
decoder_100524:(
decoder_100526:
decoder_100528:
identity

identity_1¢decoder/StatefulPartitionedCall¢ dense_17/StatefulPartitionedCall¢encoder/StatefulPartitionedCall¢"sampling_9/StatefulPartitionedCall¢!z_log_var/StatefulPartitionedCall¢z_mean/StatefulPartitionedCallå
encoder/StatefulPartitionedCallStatefulPartitionedCallinput_39encoder_100479encoder_100481encoder_100483encoder_100485encoder_100487encoder_100489encoder_100491encoder_100493*
Tin
2	*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_encoder_layer_call_and_return_conditional_losses_100187á
flatten_13/PartitionedCallPartitionedCall(encoder/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_flatten_13_layer_call_and_return_conditional_losses_99741
z_mean/StatefulPartitionedCallStatefulPartitionedCall#flatten_13/PartitionedCall:output:0z_mean_100497z_mean_100499*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_z_mean_layer_call_and_return_conditional_losses_99753
!z_log_var/StatefulPartitionedCallStatefulPartitionedCall#flatten_13/PartitionedCall:output:0z_log_var_100502z_log_var_100504*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_z_log_var_layer_call_and_return_conditional_losses_99769
"sampling_9/StatefulPartitionedCallStatefulPartitionedCall'z_mean/StatefulPartitionedCall:output:0*z_log_var/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_sampling_9_layer_call_and_return_conditional_losses_99801
 dense_17/StatefulPartitionedCallStatefulPartitionedCall+sampling_9/StatefulPartitionedCall:output:0dense_17_100508dense_17_100510*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_17_layer_call_and_return_conditional_losses_99814é
reshape_13/PartitionedCallPartitionedCall)dense_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_reshape_13_layer_call_and_return_conditional_losses_99834
decoder/StatefulPartitionedCallStatefulPartitionedCall#reshape_13/PartitionedCall:output:0decoder_100514decoder_100516decoder_100518decoder_100520decoder_100522decoder_100524decoder_100526decoder_100528*
Tin
2	*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_decoder_layer_call_and_return_conditional_losses_100063ï
kl_9/PartitionedCallPartitionedCall'z_mean/StatefulPartitionedCall:output:0*z_log_var/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_kl_9_layer_call_and_return_conditional_losses_99917Ç
add_loss_6/PartitionedCallPartitionedCallkl_9/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: : * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_add_loss_6_layer_call_and_return_conditional_losses_99924
IdentityIdentity(decoder/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPPc

Identity_1Identity#add_loss_6/PartitionedCall:output:1^NoOp*
T0*
_output_shapes
: 
NoOpNoOp ^decoder/StatefulPartitionedCall!^dense_17/StatefulPartitionedCall ^encoder/StatefulPartitionedCall#^sampling_9/StatefulPartitionedCall"^z_log_var/StatefulPartitionedCall^z_mean/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:ÿÿÿÿÿÿÿÿÿPP: : : : : : : : : : : : : : : : : : : : : : 2B
decoder/StatefulPartitionedCalldecoder/StatefulPartitionedCall2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2B
encoder/StatefulPartitionedCallencoder/StatefulPartitionedCall2H
"sampling_9/StatefulPartitionedCall"sampling_9/StatefulPartitionedCall2F
!z_log_var/StatefulPartitionedCall!z_log_var/StatefulPartitionedCall2@
z_mean/StatefulPartitionedCallz_mean/StatefulPartitionedCall:Y U
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP
"
_user_specified_name
input_39

«
H__inference_sequential_26_layer_call_and_return_conditional_losses_99122

inputs*
conv2d_104_99065:	
conv2d_104_99067:	*
conv2d_105_99082:	
conv2d_105_99084:*
conv2d_106_99099: 
conv2d_106_99101: *
conv2d_107_99116: @
conv2d_107_99118:@
identity¢"conv2d_104/StatefulPartitionedCall¢"conv2d_105/StatefulPartitionedCall¢"conv2d_106/StatefulPartitionedCall¢"conv2d_107/StatefulPartitionedCall
"conv2d_104/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_104_99065conv2d_104_99067*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_104_layer_call_and_return_conditional_losses_99064¥
"conv2d_105/StatefulPartitionedCallStatefulPartitionedCall+conv2d_104/StatefulPartitionedCall:output:0conv2d_105_99082conv2d_105_99084*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_105_layer_call_and_return_conditional_losses_99081¥
"conv2d_106/StatefulPartitionedCallStatefulPartitionedCall+conv2d_105/StatefulPartitionedCall:output:0conv2d_106_99099conv2d_106_99101*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_106_layer_call_and_return_conditional_losses_99098¥
"conv2d_107/StatefulPartitionedCallStatefulPartitionedCall+conv2d_106/StatefulPartitionedCall:output:0conv2d_107_99116conv2d_107_99118*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_107_layer_call_and_return_conditional_losses_99115
IdentityIdentity+conv2d_107/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ú
NoOpNoOp#^conv2d_104/StatefulPartitionedCall#^conv2d_105/StatefulPartitionedCall#^conv2d_106/StatefulPartitionedCall#^conv2d_107/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿPP: : : : : : : : 2H
"conv2d_104/StatefulPartitionedCall"conv2d_104/StatefulPartitionedCall2H
"conv2d_105/StatefulPartitionedCall"conv2d_105/StatefulPartitionedCall2H
"conv2d_106/StatefulPartitionedCall"conv2d_106/StatefulPartitionedCall2H
"conv2d_107/StatefulPartitionedCall"conv2d_107/StatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP
 
_user_specified_nameinputs
ð
 
+__inference_conv2d_105_layer_call_fn_101640

inputs!
unknown:	
	unknown_0:
identity¢StatefulPartitionedCallå
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_105_layer_call_and_return_conditional_losses_99081w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ((	: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	
 
_user_specified_nameinputs
H
Ô
B__inference_decoder_layer_call_and_return_conditional_losses_99884
zQ
7sequential_27_conv2d_108_conv2d_readvariableop_resource:@@F
8sequential_27_conv2d_108_biasadd_readvariableop_resource:@Q
7sequential_27_conv2d_109_conv2d_readvariableop_resource:@ F
8sequential_27_conv2d_109_biasadd_readvariableop_resource: Q
7sequential_27_conv2d_110_conv2d_readvariableop_resource: F
8sequential_27_conv2d_110_biasadd_readvariableop_resource:Q
7sequential_27_conv2d_111_conv2d_readvariableop_resource:F
8sequential_27_conv2d_111_biasadd_readvariableop_resource:
identity¢/sequential_27/conv2d_108/BiasAdd/ReadVariableOp¢.sequential_27/conv2d_108/Conv2D/ReadVariableOp¢/sequential_27/conv2d_109/BiasAdd/ReadVariableOp¢.sequential_27/conv2d_109/Conv2D/ReadVariableOp¢/sequential_27/conv2d_110/BiasAdd/ReadVariableOp¢.sequential_27/conv2d_110/Conv2D/ReadVariableOp¢/sequential_27/conv2d_111/BiasAdd/ReadVariableOp¢.sequential_27/conv2d_111/Conv2D/ReadVariableOpu
$sequential_27/up_sampling2d_52/ConstConst*
_output_shapes
:*
dtype0*
valueB"      w
&sequential_27/up_sampling2d_52/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      ®
"sequential_27/up_sampling2d_52/mulMul-sequential_27/up_sampling2d_52/Const:output:0/sequential_27/up_sampling2d_52/Const_1:output:0*
T0*
_output_shapes
:Ó
;sequential_27/up_sampling2d_52/resize/ResizeNearestNeighborResizeNearestNeighborz&sequential_27/up_sampling2d_52/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

@*
half_pixel_centers(®
.sequential_27/conv2d_108/Conv2D/ReadVariableOpReadVariableOp7sequential_27_conv2d_108_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
sequential_27/conv2d_108/Conv2DConv2DLsequential_27/up_sampling2d_52/resize/ResizeNearestNeighbor:resized_images:06sequential_27/conv2d_108/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

@*
paddingSAME*
strides
¤
/sequential_27/conv2d_108/BiasAdd/ReadVariableOpReadVariableOp8sequential_27_conv2d_108_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0È
 sequential_27/conv2d_108/BiasAddBiasAdd(sequential_27/conv2d_108/Conv2D:output:07sequential_27/conv2d_108/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

@
sequential_27/conv2d_108/ReluRelu)sequential_27/conv2d_108/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

@u
$sequential_27/up_sampling2d_53/ConstConst*
_output_shapes
:*
dtype0*
valueB"
   
   w
&sequential_27/up_sampling2d_53/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      ®
"sequential_27/up_sampling2d_53/mulMul-sequential_27/up_sampling2d_53/Const:output:0/sequential_27/up_sampling2d_53/Const_1:output:0*
T0*
_output_shapes
:ý
;sequential_27/up_sampling2d_53/resize/ResizeNearestNeighborResizeNearestNeighbor+sequential_27/conv2d_108/Relu:activations:0&sequential_27/up_sampling2d_53/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
half_pixel_centers(®
.sequential_27/conv2d_109/Conv2D/ReadVariableOpReadVariableOp7sequential_27_conv2d_109_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0
sequential_27/conv2d_109/Conv2DConv2DLsequential_27/up_sampling2d_53/resize/ResizeNearestNeighbor:resized_images:06sequential_27/conv2d_109/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
paddingSAME*
strides
¤
/sequential_27/conv2d_109/BiasAdd/ReadVariableOpReadVariableOp8sequential_27_conv2d_109_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0È
 sequential_27/conv2d_109/BiasAddBiasAdd(sequential_27/conv2d_109/Conv2D:output:07sequential_27/conv2d_109/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
sequential_27/conv2d_109/ReluRelu)sequential_27/conv2d_109/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ u
$sequential_27/up_sampling2d_54/ConstConst*
_output_shapes
:*
dtype0*
valueB"      w
&sequential_27/up_sampling2d_54/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      ®
"sequential_27/up_sampling2d_54/mulMul-sequential_27/up_sampling2d_54/Const:output:0/sequential_27/up_sampling2d_54/Const_1:output:0*
T0*
_output_shapes
:ý
;sequential_27/up_sampling2d_54/resize/ResizeNearestNeighborResizeNearestNeighbor+sequential_27/conv2d_109/Relu:activations:0&sequential_27/up_sampling2d_54/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(( *
half_pixel_centers(®
.sequential_27/conv2d_110/Conv2D/ReadVariableOpReadVariableOp7sequential_27_conv2d_110_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
sequential_27/conv2d_110/Conv2DConv2DLsequential_27/up_sampling2d_54/resize/ResizeNearestNeighbor:resized_images:06sequential_27/conv2d_110/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((*
paddingSAME*
strides
¤
/sequential_27/conv2d_110/BiasAdd/ReadVariableOpReadVariableOp8sequential_27_conv2d_110_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0È
 sequential_27/conv2d_110/BiasAddBiasAdd(sequential_27/conv2d_110/Conv2D:output:07sequential_27/conv2d_110/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((
sequential_27/conv2d_110/ReluRelu)sequential_27/conv2d_110/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((u
$sequential_27/up_sampling2d_55/ConstConst*
_output_shapes
:*
dtype0*
valueB"(   (   w
&sequential_27/up_sampling2d_55/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      ®
"sequential_27/up_sampling2d_55/mulMul-sequential_27/up_sampling2d_55/Const:output:0/sequential_27/up_sampling2d_55/Const_1:output:0*
T0*
_output_shapes
:ý
;sequential_27/up_sampling2d_55/resize/ResizeNearestNeighborResizeNearestNeighbor+sequential_27/conv2d_110/Relu:activations:0&sequential_27/up_sampling2d_55/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP*
half_pixel_centers(®
.sequential_27/conv2d_111/Conv2D/ReadVariableOpReadVariableOp7sequential_27_conv2d_111_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
sequential_27/conv2d_111/Conv2DConv2DLsequential_27/up_sampling2d_55/resize/ResizeNearestNeighbor:resized_images:06sequential_27/conv2d_111/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP*
paddingSAME*
strides
¤
/sequential_27/conv2d_111/BiasAdd/ReadVariableOpReadVariableOp8sequential_27_conv2d_111_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0È
 sequential_27/conv2d_111/BiasAddBiasAdd(sequential_27/conv2d_111/Conv2D:output:07sequential_27/conv2d_111/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP
 sequential_27/conv2d_111/SigmoidSigmoid)sequential_27/conv2d_111/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP{
IdentityIdentity$sequential_27/conv2d_111/Sigmoid:y:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPPÒ
NoOpNoOp0^sequential_27/conv2d_108/BiasAdd/ReadVariableOp/^sequential_27/conv2d_108/Conv2D/ReadVariableOp0^sequential_27/conv2d_109/BiasAdd/ReadVariableOp/^sequential_27/conv2d_109/Conv2D/ReadVariableOp0^sequential_27/conv2d_110/BiasAdd/ReadVariableOp/^sequential_27/conv2d_110/Conv2D/ReadVariableOp0^sequential_27/conv2d_111/BiasAdd/ReadVariableOp/^sequential_27/conv2d_111/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ@: : : : : : : : 2b
/sequential_27/conv2d_108/BiasAdd/ReadVariableOp/sequential_27/conv2d_108/BiasAdd/ReadVariableOp2`
.sequential_27/conv2d_108/Conv2D/ReadVariableOp.sequential_27/conv2d_108/Conv2D/ReadVariableOp2b
/sequential_27/conv2d_109/BiasAdd/ReadVariableOp/sequential_27/conv2d_109/BiasAdd/ReadVariableOp2`
.sequential_27/conv2d_109/Conv2D/ReadVariableOp.sequential_27/conv2d_109/Conv2D/ReadVariableOp2b
/sequential_27/conv2d_110/BiasAdd/ReadVariableOp/sequential_27/conv2d_110/BiasAdd/ReadVariableOp2`
.sequential_27/conv2d_110/Conv2D/ReadVariableOp.sequential_27/conv2d_110/Conv2D/ReadVariableOp2b
/sequential_27/conv2d_111/BiasAdd/ReadVariableOp/sequential_27/conv2d_111/BiasAdd/ReadVariableOp2`
.sequential_27/conv2d_111/Conv2D/ReadVariableOp.sequential_27/conv2d_111/Conv2D/ReadVariableOp:R N
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@

_user_specified_namez
é

$__inference_signature_wrapper_100971
input_39!
unknown:	
	unknown_0:	#
	unknown_1:	
	unknown_2:#
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:
À
	unknown_8:	
	unknown_9:
À

unknown_10:	

unknown_11:
À

unknown_12:	À$

unknown_13:@@

unknown_14:@$

unknown_15:@ 

unknown_16: $

unknown_17: 

unknown_18:$

unknown_19:

unknown_20:
identity¢StatefulPartitionedCallÑ
StatefulPartitionedCallStatefulPartitionedCallinput_39unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP*8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *)
f$R"
 __inference__wrapped_model_99046w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:ÿÿÿÿÿÿÿÿÿPP: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP
"
_user_specified_name
input_39
%
­
H__inference_sequential_27_layer_call_and_return_conditional_losses_99650
input_40*
conv2d_108_99626:@@
conv2d_108_99628:@*
conv2d_109_99632:@ 
conv2d_109_99634: *
conv2d_110_99638: 
conv2d_110_99640:*
conv2d_111_99644:
conv2d_111_99646:
identity¢"conv2d_108/StatefulPartitionedCall¢"conv2d_109/StatefulPartitionedCall¢"conv2d_110/StatefulPartitionedCall¢"conv2d_111/StatefulPartitionedCallæ
 up_sampling2d_52/PartitionedCallPartitionedCallinput_40*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_52_layer_call_and_return_conditional_losses_99332µ
"conv2d_108/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_52/PartitionedCall:output:0conv2d_108_99626conv2d_108_99628*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_108_layer_call_and_return_conditional_losses_99411
 up_sampling2d_53/PartitionedCallPartitionedCall+conv2d_108/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_53_layer_call_and_return_conditional_losses_99351µ
"conv2d_109/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_53/PartitionedCall:output:0conv2d_109_99632conv2d_109_99634*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_109_layer_call_and_return_conditional_losses_99429
 up_sampling2d_54/PartitionedCallPartitionedCall+conv2d_109/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_54_layer_call_and_return_conditional_losses_99370µ
"conv2d_110/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_54/PartitionedCall:output:0conv2d_110_99638conv2d_110_99640*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_110_layer_call_and_return_conditional_losses_99447
 up_sampling2d_55/PartitionedCallPartitionedCall+conv2d_110/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_55_layer_call_and_return_conditional_losses_99389µ
"conv2d_111/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_55/PartitionedCall:output:0conv2d_111_99644conv2d_111_99646*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_111_layer_call_and_return_conditional_losses_99465
IdentityIdentity+conv2d_111/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÚ
NoOpNoOp#^conv2d_108/StatefulPartitionedCall#^conv2d_109/StatefulPartitionedCall#^conv2d_110/StatefulPartitionedCall#^conv2d_111/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ@: : : : : : : : 2H
"conv2d_108/StatefulPartitionedCall"conv2d_108/StatefulPartitionedCall2H
"conv2d_109/StatefulPartitionedCall"conv2d_109/StatefulPartitionedCall2H
"conv2d_110/StatefulPartitionedCall"conv2d_110/StatefulPartitionedCall2H
"conv2d_111/StatefulPartitionedCall"conv2d_111/StatefulPartitionedCall:Y U
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
input_40
è1
Î
?__inference_VAE_layer_call_and_return_conditional_losses_100476
input_39(
encoder_100419:	
encoder_100421:	(
encoder_100423:	
encoder_100425:(
encoder_100427: 
encoder_100429: (
encoder_100431: @
encoder_100433:@!
z_mean_100437:
À
z_mean_100439:	$
z_log_var_100442:
À
z_log_var_100444:	#
dense_17_100448:
À
dense_17_100450:	À(
decoder_100454:@@
decoder_100456:@(
decoder_100458:@ 
decoder_100460: (
decoder_100462: 
decoder_100464:(
decoder_100466:
decoder_100468:
identity

identity_1¢decoder/StatefulPartitionedCall¢ dense_17/StatefulPartitionedCall¢encoder/StatefulPartitionedCall¢"sampling_9/StatefulPartitionedCall¢!z_log_var/StatefulPartitionedCall¢z_mean/StatefulPartitionedCallä
encoder/StatefulPartitionedCallStatefulPartitionedCallinput_39encoder_100419encoder_100421encoder_100423encoder_100425encoder_100427encoder_100429encoder_100431encoder_100433*
Tin
2	*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_encoder_layer_call_and_return_conditional_losses_99717á
flatten_13/PartitionedCallPartitionedCall(encoder/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_flatten_13_layer_call_and_return_conditional_losses_99741
z_mean/StatefulPartitionedCallStatefulPartitionedCall#flatten_13/PartitionedCall:output:0z_mean_100437z_mean_100439*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_z_mean_layer_call_and_return_conditional_losses_99753
!z_log_var/StatefulPartitionedCallStatefulPartitionedCall#flatten_13/PartitionedCall:output:0z_log_var_100442z_log_var_100444*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_z_log_var_layer_call_and_return_conditional_losses_99769
"sampling_9/StatefulPartitionedCallStatefulPartitionedCall'z_mean/StatefulPartitionedCall:output:0*z_log_var/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_sampling_9_layer_call_and_return_conditional_losses_99801
 dense_17/StatefulPartitionedCallStatefulPartitionedCall+sampling_9/StatefulPartitionedCall:output:0dense_17_100448dense_17_100450*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_17_layer_call_and_return_conditional_losses_99814é
reshape_13/PartitionedCallPartitionedCall)dense_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_reshape_13_layer_call_and_return_conditional_losses_99834ÿ
decoder/StatefulPartitionedCallStatefulPartitionedCall#reshape_13/PartitionedCall:output:0decoder_100454decoder_100456decoder_100458decoder_100460decoder_100462decoder_100464decoder_100466decoder_100468*
Tin
2	*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_decoder_layer_call_and_return_conditional_losses_99884ï
kl_9/PartitionedCallPartitionedCall'z_mean/StatefulPartitionedCall:output:0*z_log_var/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_kl_9_layer_call_and_return_conditional_losses_99917Ç
add_loss_6/PartitionedCallPartitionedCallkl_9/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: : * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_add_loss_6_layer_call_and_return_conditional_losses_99924
IdentityIdentity(decoder/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPPc

Identity_1Identity#add_loss_6/PartitionedCall:output:1^NoOp*
T0*
_output_shapes
: 
NoOpNoOp ^decoder/StatefulPartitionedCall!^dense_17/StatefulPartitionedCall ^encoder/StatefulPartitionedCall#^sampling_9/StatefulPartitionedCall"^z_log_var/StatefulPartitionedCall^z_mean/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:ÿÿÿÿÿÿÿÿÿPP: : : : : : : : : : : : : : : : : : : : : : 2B
decoder/StatefulPartitionedCalldecoder/StatefulPartitionedCall2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2B
encoder/StatefulPartitionedCallencoder/StatefulPartitionedCall2H
"sampling_9/StatefulPartitionedCall"sampling_9/StatefulPartitionedCall2F
!z_log_var/StatefulPartitionedCall!z_log_var/StatefulPartitionedCall2@
z_mean/StatefulPartitionedCallz_mean/StatefulPartitionedCall:Y U
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP
"
_user_specified_name
input_39


Ý
.__inference_sequential_26_layer_call_fn_101409

inputs!
unknown:	
	unknown_0:	#
	unknown_1:	
	unknown_2:#
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
identity¢StatefulPartitionedCall¶
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_26_layer_call_and_return_conditional_losses_99228w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿPP: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP
 
_user_specified_nameinputs

h
L__inference_up_sampling2d_54_layer_call_and_return_conditional_losses_101782

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:½
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:µ
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¹
 
+__inference_conv2d_111_layer_call_fn_101828

inputs!
unknown:
	unknown_0:
identity¢StatefulPartitionedCall÷
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_111_layer_call_and_return_conditional_losses_99465
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ð	
Ò
(__inference_decoder_layer_call_fn_101239
z!
unknown:@@
	unknown_0:@#
	unknown_1:@ 
	unknown_2: #
	unknown_3: 
	unknown_4:#
	unknown_5:
	unknown_6:
identity¢StatefulPartitionedCall¬
StatefulPartitionedCallStatefulPartitionedCallzunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_decoder_layer_call_and_return_conditional_losses_100063w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ@: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@

_user_specified_namez
Ï	
õ
A__inference_z_mean_layer_call_and_return_conditional_losses_99753

inputs2
matmul_readvariableop_resource:
À.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
À*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿÀ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 
_user_specified_nameinputs
³
µ
H__inference_sequential_26_layer_call_and_return_conditional_losses_99292
conv2d_104_input*
conv2d_104_99271:	
conv2d_104_99273:	*
conv2d_105_99276:	
conv2d_105_99278:*
conv2d_106_99281: 
conv2d_106_99283: *
conv2d_107_99286: @
conv2d_107_99288:@
identity¢"conv2d_104/StatefulPartitionedCall¢"conv2d_105/StatefulPartitionedCall¢"conv2d_106/StatefulPartitionedCall¢"conv2d_107/StatefulPartitionedCall
"conv2d_104/StatefulPartitionedCallStatefulPartitionedCallconv2d_104_inputconv2d_104_99271conv2d_104_99273*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_104_layer_call_and_return_conditional_losses_99064¥
"conv2d_105/StatefulPartitionedCallStatefulPartitionedCall+conv2d_104/StatefulPartitionedCall:output:0conv2d_105_99276conv2d_105_99278*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_105_layer_call_and_return_conditional_losses_99081¥
"conv2d_106/StatefulPartitionedCallStatefulPartitionedCall+conv2d_105/StatefulPartitionedCall:output:0conv2d_106_99281conv2d_106_99283*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_106_layer_call_and_return_conditional_losses_99098¥
"conv2d_107/StatefulPartitionedCallStatefulPartitionedCall+conv2d_106/StatefulPartitionedCall:output:0conv2d_107_99286conv2d_107_99288*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_107_layer_call_and_return_conditional_losses_99115
IdentityIdentity+conv2d_107/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ú
NoOpNoOp#^conv2d_104/StatefulPartitionedCall#^conv2d_105/StatefulPartitionedCall#^conv2d_106/StatefulPartitionedCall#^conv2d_107/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿPP: : : : : : : : 2H
"conv2d_104/StatefulPartitionedCall"conv2d_104/StatefulPartitionedCall2H
"conv2d_105/StatefulPartitionedCall"conv2d_105/StatefulPartitionedCall2H
"conv2d_106/StatefulPartitionedCall"conv2d_106/StatefulPartitionedCall2H
"conv2d_107/StatefulPartitionedCall"conv2d_107/StatefulPartitionedCall:a ]
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP
*
_user_specified_nameconv2d_104_input
ð
þ
E__inference_conv2d_111_layer_call_and_return_conditional_losses_99465

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0«
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿp
SigmoidSigmoidBiasAdd:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿt
IdentityIdentitySigmoid:y:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


$__inference_VAE_layer_call_fn_100642

inputs!
unknown:	
	unknown_0:	#
	unknown_1:	
	unknown_2:#
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:
À
	unknown_8:	
	unknown_9:
À

unknown_10:	

unknown_11:
À

unknown_12:	À$

unknown_13:@@

unknown_14:@$

unknown_15:@ 

unknown_16: $

unknown_17: 

unknown_18:$

unknown_19:

unknown_20:
identity¢StatefulPartitionedCallñ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP: *8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_VAE_layer_call_and_return_conditional_losses_100318w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:ÿÿÿÿÿÿÿÿÿPP: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP
 
_user_specified_nameinputs
È
b
F__inference_flatten_13_layer_call_and_return_conditional_losses_101088

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Ï
b
F__inference_reshape_13_layer_call_and_return_conditional_losses_101197

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :@©
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:l
ReshapeReshapeinputsReshape/shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
IdentityIdentityReshape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿÀ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 
_user_specified_nameinputs
´

Þ
-__inference_sequential_27_layer_call_fn_99622
input_40!
unknown:@@
	unknown_0:@#
	unknown_1:@ 
	unknown_2: #
	unknown_3: 
	unknown_4:#
	unknown_5:
	unknown_6:
identity¢StatefulPartitionedCallÊ
StatefulPartitionedCallStatefulPartitionedCallinput_40unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_27_layer_call_and_return_conditional_losses_99582
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ@: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
input_40
Ë

)__inference_dense_17_layer_call_fn_101167

inputs
unknown:
À
	unknown_0:	À
identity¢StatefulPartitionedCallÜ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_17_layer_call_and_return_conditional_losses_99814p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
;

I__inference_sequential_27_layer_call_and_return_conditional_losses_101611

inputsC
)conv2d_108_conv2d_readvariableop_resource:@@8
*conv2d_108_biasadd_readvariableop_resource:@C
)conv2d_109_conv2d_readvariableop_resource:@ 8
*conv2d_109_biasadd_readvariableop_resource: C
)conv2d_110_conv2d_readvariableop_resource: 8
*conv2d_110_biasadd_readvariableop_resource:C
)conv2d_111_conv2d_readvariableop_resource:8
*conv2d_111_biasadd_readvariableop_resource:
identity¢!conv2d_108/BiasAdd/ReadVariableOp¢ conv2d_108/Conv2D/ReadVariableOp¢!conv2d_109/BiasAdd/ReadVariableOp¢ conv2d_109/Conv2D/ReadVariableOp¢!conv2d_110/BiasAdd/ReadVariableOp¢ conv2d_110/Conv2D/ReadVariableOp¢!conv2d_111/BiasAdd/ReadVariableOp¢ conv2d_111/Conv2D/ReadVariableOpg
up_sampling2d_52/ConstConst*
_output_shapes
:*
dtype0*
valueB"      i
up_sampling2d_52/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      
up_sampling2d_52/mulMulup_sampling2d_52/Const:output:0!up_sampling2d_52/Const_1:output:0*
T0*
_output_shapes
:¼
-up_sampling2d_52/resize/ResizeNearestNeighborResizeNearestNeighborinputsup_sampling2d_52/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

@*
half_pixel_centers(
 conv2d_108/Conv2D/ReadVariableOpReadVariableOp)conv2d_108_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0ç
conv2d_108/Conv2DConv2D>up_sampling2d_52/resize/ResizeNearestNeighbor:resized_images:0(conv2d_108/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

@*
paddingSAME*
strides

!conv2d_108/BiasAdd/ReadVariableOpReadVariableOp*conv2d_108_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_108/BiasAddBiasAddconv2d_108/Conv2D:output:0)conv2d_108/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

@n
conv2d_108/ReluReluconv2d_108/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

@g
up_sampling2d_53/ConstConst*
_output_shapes
:*
dtype0*
valueB"
   
   i
up_sampling2d_53/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      
up_sampling2d_53/mulMulup_sampling2d_53/Const:output:0!up_sampling2d_53/Const_1:output:0*
T0*
_output_shapes
:Ó
-up_sampling2d_53/resize/ResizeNearestNeighborResizeNearestNeighborconv2d_108/Relu:activations:0up_sampling2d_53/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
half_pixel_centers(
 conv2d_109/Conv2D/ReadVariableOpReadVariableOp)conv2d_109_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0ç
conv2d_109/Conv2DConv2D>up_sampling2d_53/resize/ResizeNearestNeighbor:resized_images:0(conv2d_109/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
paddingSAME*
strides

!conv2d_109/BiasAdd/ReadVariableOpReadVariableOp*conv2d_109_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_109/BiasAddBiasAddconv2d_109/Conv2D:output:0)conv2d_109/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ n
conv2d_109/ReluReluconv2d_109/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ g
up_sampling2d_54/ConstConst*
_output_shapes
:*
dtype0*
valueB"      i
up_sampling2d_54/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      
up_sampling2d_54/mulMulup_sampling2d_54/Const:output:0!up_sampling2d_54/Const_1:output:0*
T0*
_output_shapes
:Ó
-up_sampling2d_54/resize/ResizeNearestNeighborResizeNearestNeighborconv2d_109/Relu:activations:0up_sampling2d_54/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(( *
half_pixel_centers(
 conv2d_110/Conv2D/ReadVariableOpReadVariableOp)conv2d_110_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0ç
conv2d_110/Conv2DConv2D>up_sampling2d_54/resize/ResizeNearestNeighbor:resized_images:0(conv2d_110/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((*
paddingSAME*
strides

!conv2d_110/BiasAdd/ReadVariableOpReadVariableOp*conv2d_110_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_110/BiasAddBiasAddconv2d_110/Conv2D:output:0)conv2d_110/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((n
conv2d_110/ReluReluconv2d_110/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((g
up_sampling2d_55/ConstConst*
_output_shapes
:*
dtype0*
valueB"(   (   i
up_sampling2d_55/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      
up_sampling2d_55/mulMulup_sampling2d_55/Const:output:0!up_sampling2d_55/Const_1:output:0*
T0*
_output_shapes
:Ó
-up_sampling2d_55/resize/ResizeNearestNeighborResizeNearestNeighborconv2d_110/Relu:activations:0up_sampling2d_55/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP*
half_pixel_centers(
 conv2d_111/Conv2D/ReadVariableOpReadVariableOp)conv2d_111_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0ç
conv2d_111/Conv2DConv2D>up_sampling2d_55/resize/ResizeNearestNeighbor:resized_images:0(conv2d_111/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP*
paddingSAME*
strides

!conv2d_111/BiasAdd/ReadVariableOpReadVariableOp*conv2d_111_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_111/BiasAddBiasAddconv2d_111/Conv2D:output:0)conv2d_111/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPPt
conv2d_111/SigmoidSigmoidconv2d_111/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPPm
IdentityIdentityconv2d_111/Sigmoid:y:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPPâ
NoOpNoOp"^conv2d_108/BiasAdd/ReadVariableOp!^conv2d_108/Conv2D/ReadVariableOp"^conv2d_109/BiasAdd/ReadVariableOp!^conv2d_109/Conv2D/ReadVariableOp"^conv2d_110/BiasAdd/ReadVariableOp!^conv2d_110/Conv2D/ReadVariableOp"^conv2d_111/BiasAdd/ReadVariableOp!^conv2d_111/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ@: : : : : : : : 2F
!conv2d_108/BiasAdd/ReadVariableOp!conv2d_108/BiasAdd/ReadVariableOp2D
 conv2d_108/Conv2D/ReadVariableOp conv2d_108/Conv2D/ReadVariableOp2F
!conv2d_109/BiasAdd/ReadVariableOp!conv2d_109/BiasAdd/ReadVariableOp2D
 conv2d_109/Conv2D/ReadVariableOp conv2d_109/Conv2D/ReadVariableOp2F
!conv2d_110/BiasAdd/ReadVariableOp!conv2d_110/BiasAdd/ReadVariableOp2D
 conv2d_110/Conv2D/ReadVariableOp conv2d_110/Conv2D/ReadVariableOp2F
!conv2d_111/BiasAdd/ReadVariableOp!conv2d_111/BiasAdd/ReadVariableOp2D
 conv2d_111/Conv2D/ReadVariableOp conv2d_111/Conv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Ó	
ù
E__inference_z_log_var_layer_call_and_return_conditional_losses_101126

inputs2
matmul_readvariableop_resource:
À.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
À*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿÀ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 
_user_specified_nameinputs
¶
q
E__inference_add_loss_6_layer_call_and_return_conditional_losses_99924

inputs
identity

identity_1=
IdentityIdentityinputs*
T0*
_output_shapes
: ?

Identity_1Identityinputs*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: :> :

_output_shapes
: 
 
_user_specified_nameinputs

ÿ
F__inference_conv2d_106_layer_call_and_return_conditional_losses_101671

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
àÏ

 __inference__wrapped_model_99046
input_39]
Cvae_encoder_sequential_26_conv2d_104_conv2d_readvariableop_resource:	R
Dvae_encoder_sequential_26_conv2d_104_biasadd_readvariableop_resource:	]
Cvae_encoder_sequential_26_conv2d_105_conv2d_readvariableop_resource:	R
Dvae_encoder_sequential_26_conv2d_105_biasadd_readvariableop_resource:]
Cvae_encoder_sequential_26_conv2d_106_conv2d_readvariableop_resource: R
Dvae_encoder_sequential_26_conv2d_106_biasadd_readvariableop_resource: ]
Cvae_encoder_sequential_26_conv2d_107_conv2d_readvariableop_resource: @R
Dvae_encoder_sequential_26_conv2d_107_biasadd_readvariableop_resource:@=
)vae_z_mean_matmul_readvariableop_resource:
À9
*vae_z_mean_biasadd_readvariableop_resource:	@
,vae_z_log_var_matmul_readvariableop_resource:
À<
-vae_z_log_var_biasadd_readvariableop_resource:	?
+vae_dense_17_matmul_readvariableop_resource:
À;
,vae_dense_17_biasadd_readvariableop_resource:	À]
Cvae_decoder_sequential_27_conv2d_108_conv2d_readvariableop_resource:@@R
Dvae_decoder_sequential_27_conv2d_108_biasadd_readvariableop_resource:@]
Cvae_decoder_sequential_27_conv2d_109_conv2d_readvariableop_resource:@ R
Dvae_decoder_sequential_27_conv2d_109_biasadd_readvariableop_resource: ]
Cvae_decoder_sequential_27_conv2d_110_conv2d_readvariableop_resource: R
Dvae_decoder_sequential_27_conv2d_110_biasadd_readvariableop_resource:]
Cvae_decoder_sequential_27_conv2d_111_conv2d_readvariableop_resource:R
Dvae_decoder_sequential_27_conv2d_111_biasadd_readvariableop_resource:
identity¢;VAE/decoder/sequential_27/conv2d_108/BiasAdd/ReadVariableOp¢:VAE/decoder/sequential_27/conv2d_108/Conv2D/ReadVariableOp¢;VAE/decoder/sequential_27/conv2d_109/BiasAdd/ReadVariableOp¢:VAE/decoder/sequential_27/conv2d_109/Conv2D/ReadVariableOp¢;VAE/decoder/sequential_27/conv2d_110/BiasAdd/ReadVariableOp¢:VAE/decoder/sequential_27/conv2d_110/Conv2D/ReadVariableOp¢;VAE/decoder/sequential_27/conv2d_111/BiasAdd/ReadVariableOp¢:VAE/decoder/sequential_27/conv2d_111/Conv2D/ReadVariableOp¢#VAE/dense_17/BiasAdd/ReadVariableOp¢"VAE/dense_17/MatMul/ReadVariableOp¢;VAE/encoder/sequential_26/conv2d_104/BiasAdd/ReadVariableOp¢:VAE/encoder/sequential_26/conv2d_104/Conv2D/ReadVariableOp¢;VAE/encoder/sequential_26/conv2d_105/BiasAdd/ReadVariableOp¢:VAE/encoder/sequential_26/conv2d_105/Conv2D/ReadVariableOp¢;VAE/encoder/sequential_26/conv2d_106/BiasAdd/ReadVariableOp¢:VAE/encoder/sequential_26/conv2d_106/Conv2D/ReadVariableOp¢;VAE/encoder/sequential_26/conv2d_107/BiasAdd/ReadVariableOp¢:VAE/encoder/sequential_26/conv2d_107/Conv2D/ReadVariableOp¢$VAE/z_log_var/BiasAdd/ReadVariableOp¢#VAE/z_log_var/MatMul/ReadVariableOp¢!VAE/z_mean/BiasAdd/ReadVariableOp¢ VAE/z_mean/MatMul/ReadVariableOpÆ
:VAE/encoder/sequential_26/conv2d_104/Conv2D/ReadVariableOpReadVariableOpCvae_encoder_sequential_26_conv2d_104_conv2d_readvariableop_resource*&
_output_shapes
:	*
dtype0å
+VAE/encoder/sequential_26/conv2d_104/Conv2DConv2Dinput_39BVAE/encoder/sequential_26/conv2d_104/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	*
paddingSAME*
strides
¼
;VAE/encoder/sequential_26/conv2d_104/BiasAdd/ReadVariableOpReadVariableOpDvae_encoder_sequential_26_conv2d_104_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0ì
,VAE/encoder/sequential_26/conv2d_104/BiasAddBiasAdd4VAE/encoder/sequential_26/conv2d_104/Conv2D:output:0CVAE/encoder/sequential_26/conv2d_104/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	¢
)VAE/encoder/sequential_26/conv2d_104/ReluRelu5VAE/encoder/sequential_26/conv2d_104/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((	Æ
:VAE/encoder/sequential_26/conv2d_105/Conv2D/ReadVariableOpReadVariableOpCvae_encoder_sequential_26_conv2d_105_conv2d_readvariableop_resource*&
_output_shapes
:	*
dtype0
+VAE/encoder/sequential_26/conv2d_105/Conv2DConv2D7VAE/encoder/sequential_26/conv2d_104/Relu:activations:0BVAE/encoder/sequential_26/conv2d_105/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
¼
;VAE/encoder/sequential_26/conv2d_105/BiasAdd/ReadVariableOpReadVariableOpDvae_encoder_sequential_26_conv2d_105_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ì
,VAE/encoder/sequential_26/conv2d_105/BiasAddBiasAdd4VAE/encoder/sequential_26/conv2d_105/Conv2D:output:0CVAE/encoder/sequential_26/conv2d_105/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¢
)VAE/encoder/sequential_26/conv2d_105/ReluRelu5VAE/encoder/sequential_26/conv2d_105/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿÆ
:VAE/encoder/sequential_26/conv2d_106/Conv2D/ReadVariableOpReadVariableOpCvae_encoder_sequential_26_conv2d_106_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
+VAE/encoder/sequential_26/conv2d_106/Conv2DConv2D7VAE/encoder/sequential_26/conv2d_105/Relu:activations:0BVAE/encoder/sequential_26/conv2d_106/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 *
paddingSAME*
strides
¼
;VAE/encoder/sequential_26/conv2d_106/BiasAdd/ReadVariableOpReadVariableOpDvae_encoder_sequential_26_conv2d_106_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ì
,VAE/encoder/sequential_26/conv2d_106/BiasAddBiasAdd4VAE/encoder/sequential_26/conv2d_106/Conv2D:output:0CVAE/encoder/sequential_26/conv2d_106/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 ¢
)VAE/encoder/sequential_26/conv2d_106/ReluRelu5VAE/encoder/sequential_26/conv2d_106/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 Æ
:VAE/encoder/sequential_26/conv2d_107/Conv2D/ReadVariableOpReadVariableOpCvae_encoder_sequential_26_conv2d_107_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0
+VAE/encoder/sequential_26/conv2d_107/Conv2DConv2D7VAE/encoder/sequential_26/conv2d_106/Relu:activations:0BVAE/encoder/sequential_26/conv2d_107/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
¼
;VAE/encoder/sequential_26/conv2d_107/BiasAdd/ReadVariableOpReadVariableOpDvae_encoder_sequential_26_conv2d_107_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ì
,VAE/encoder/sequential_26/conv2d_107/BiasAddBiasAdd4VAE/encoder/sequential_26/conv2d_107/Conv2D:output:0CVAE/encoder/sequential_26/conv2d_107/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¢
)VAE/encoder/sequential_26/conv2d_107/ReluRelu5VAE/encoder/sequential_26/conv2d_107/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@e
VAE/flatten_13/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@  ¬
VAE/flatten_13/ReshapeReshape7VAE/encoder/sequential_26/conv2d_107/Relu:activations:0VAE/flatten_13/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 VAE/z_mean/MatMul/ReadVariableOpReadVariableOp)vae_z_mean_matmul_readvariableop_resource* 
_output_shapes
:
À*
dtype0
VAE/z_mean/MatMulMatMulVAE/flatten_13/Reshape:output:0(VAE/z_mean/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!VAE/z_mean/BiasAdd/ReadVariableOpReadVariableOp*vae_z_mean_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
VAE/z_mean/BiasAddBiasAddVAE/z_mean/MatMul:product:0)VAE/z_mean/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#VAE/z_log_var/MatMul/ReadVariableOpReadVariableOp,vae_z_log_var_matmul_readvariableop_resource* 
_output_shapes
:
À*
dtype0
VAE/z_log_var/MatMulMatMulVAE/flatten_13/Reshape:output:0+VAE/z_log_var/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$VAE/z_log_var/BiasAdd/ReadVariableOpReadVariableOp-vae_z_log_var_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0¡
VAE/z_log_var/BiasAddBiasAddVAE/z_log_var/MatMul:product:0,VAE/z_log_var/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
VAE/sampling_9/ShapeShapeVAE/z_mean/BiasAdd:output:0*
T0*
_output_shapes
:l
"VAE/sampling_9/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$VAE/sampling_9/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$VAE/sampling_9/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
VAE/sampling_9/strided_sliceStridedSliceVAE/sampling_9/Shape:output:0+VAE/sampling_9/strided_slice/stack:output:0-VAE/sampling_9/strided_slice/stack_1:output:0-VAE/sampling_9/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
VAE/sampling_9/Shape_1ShapeVAE/z_mean/BiasAdd:output:0*
T0*
_output_shapes
:n
$VAE/sampling_9/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:p
&VAE/sampling_9/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&VAE/sampling_9/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¦
VAE/sampling_9/strided_slice_1StridedSliceVAE/sampling_9/Shape_1:output:0-VAE/sampling_9/strided_slice_1/stack:output:0/VAE/sampling_9/strided_slice_1/stack_1:output:0/VAE/sampling_9/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask¨
"VAE/sampling_9/random_normal/shapePack%VAE/sampling_9/strided_slice:output:0'VAE/sampling_9/strided_slice_1:output:0*
N*
T0*
_output_shapes
:f
!VAE/sampling_9/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    h
#VAE/sampling_9/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ?¶
1VAE/sampling_9/random_normal/RandomStandardNormalRandomStandardNormal+VAE/sampling_9/random_normal/shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0Ä
 VAE/sampling_9/random_normal/mulMul:VAE/sampling_9/random_normal/RandomStandardNormal:output:0,VAE/sampling_9/random_normal/stddev:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
VAE/sampling_9/random_normalAddV2$VAE/sampling_9/random_normal/mul:z:0*VAE/sampling_9/random_normal/mean:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
VAE/sampling_9/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
VAE/sampling_9/mulMulVAE/sampling_9/mul/x:output:0VAE/z_log_var/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
VAE/sampling_9/ExpExpVAE/sampling_9/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
VAE/sampling_9/mul_1MulVAE/sampling_9/Exp:y:0 VAE/sampling_9/random_normal:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
VAE/sampling_9/addAddV2VAE/z_mean/BiasAdd:output:0VAE/sampling_9/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"VAE/dense_17/MatMul/ReadVariableOpReadVariableOp+vae_dense_17_matmul_readvariableop_resource* 
_output_shapes
:
À*
dtype0
VAE/dense_17/MatMulMatMulVAE/sampling_9/add:z:0*VAE/dense_17/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
#VAE/dense_17/BiasAdd/ReadVariableOpReadVariableOp,vae_dense_17_biasadd_readvariableop_resource*
_output_shapes	
:À*
dtype0
VAE/dense_17/BiasAddBiasAddVAE/dense_17/MatMul:product:0+VAE/dense_17/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀk
VAE/dense_17/ReluReluVAE/dense_17/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀc
VAE/reshape_13/ShapeShapeVAE/dense_17/Relu:activations:0*
T0*
_output_shapes
:l
"VAE/reshape_13/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$VAE/reshape_13/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$VAE/reshape_13/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
VAE/reshape_13/strided_sliceStridedSliceVAE/reshape_13/Shape:output:0+VAE/reshape_13/strided_slice/stack:output:0-VAE/reshape_13/strided_slice/stack_1:output:0-VAE/reshape_13/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
VAE/reshape_13/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :`
VAE/reshape_13/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :`
VAE/reshape_13/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :@ô
VAE/reshape_13/Reshape/shapePack%VAE/reshape_13/strided_slice:output:0'VAE/reshape_13/Reshape/shape/1:output:0'VAE/reshape_13/Reshape/shape/2:output:0'VAE/reshape_13/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:£
VAE/reshape_13/ReshapeReshapeVAE/dense_17/Relu:activations:0%VAE/reshape_13/Reshape/shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
0VAE/decoder/sequential_27/up_sampling2d_52/ConstConst*
_output_shapes
:*
dtype0*
valueB"      
2VAE/decoder/sequential_27/up_sampling2d_52/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Ò
.VAE/decoder/sequential_27/up_sampling2d_52/mulMul9VAE/decoder/sequential_27/up_sampling2d_52/Const:output:0;VAE/decoder/sequential_27/up_sampling2d_52/Const_1:output:0*
T0*
_output_shapes
:
GVAE/decoder/sequential_27/up_sampling2d_52/resize/ResizeNearestNeighborResizeNearestNeighborVAE/reshape_13/Reshape:output:02VAE/decoder/sequential_27/up_sampling2d_52/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

@*
half_pixel_centers(Æ
:VAE/decoder/sequential_27/conv2d_108/Conv2D/ReadVariableOpReadVariableOpCvae_decoder_sequential_27_conv2d_108_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0µ
+VAE/decoder/sequential_27/conv2d_108/Conv2DConv2DXVAE/decoder/sequential_27/up_sampling2d_52/resize/ResizeNearestNeighbor:resized_images:0BVAE/decoder/sequential_27/conv2d_108/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

@*
paddingSAME*
strides
¼
;VAE/decoder/sequential_27/conv2d_108/BiasAdd/ReadVariableOpReadVariableOpDvae_decoder_sequential_27_conv2d_108_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ì
,VAE/decoder/sequential_27/conv2d_108/BiasAddBiasAdd4VAE/decoder/sequential_27/conv2d_108/Conv2D:output:0CVAE/decoder/sequential_27/conv2d_108/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

@¢
)VAE/decoder/sequential_27/conv2d_108/ReluRelu5VAE/decoder/sequential_27/conv2d_108/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

@
0VAE/decoder/sequential_27/up_sampling2d_53/ConstConst*
_output_shapes
:*
dtype0*
valueB"
   
   
2VAE/decoder/sequential_27/up_sampling2d_53/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Ò
.VAE/decoder/sequential_27/up_sampling2d_53/mulMul9VAE/decoder/sequential_27/up_sampling2d_53/Const:output:0;VAE/decoder/sequential_27/up_sampling2d_53/Const_1:output:0*
T0*
_output_shapes
:¡
GVAE/decoder/sequential_27/up_sampling2d_53/resize/ResizeNearestNeighborResizeNearestNeighbor7VAE/decoder/sequential_27/conv2d_108/Relu:activations:02VAE/decoder/sequential_27/up_sampling2d_53/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
half_pixel_centers(Æ
:VAE/decoder/sequential_27/conv2d_109/Conv2D/ReadVariableOpReadVariableOpCvae_decoder_sequential_27_conv2d_109_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0µ
+VAE/decoder/sequential_27/conv2d_109/Conv2DConv2DXVAE/decoder/sequential_27/up_sampling2d_53/resize/ResizeNearestNeighbor:resized_images:0BVAE/decoder/sequential_27/conv2d_109/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
paddingSAME*
strides
¼
;VAE/decoder/sequential_27/conv2d_109/BiasAdd/ReadVariableOpReadVariableOpDvae_decoder_sequential_27_conv2d_109_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ì
,VAE/decoder/sequential_27/conv2d_109/BiasAddBiasAdd4VAE/decoder/sequential_27/conv2d_109/Conv2D:output:0CVAE/decoder/sequential_27/conv2d_109/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¢
)VAE/decoder/sequential_27/conv2d_109/ReluRelu5VAE/decoder/sequential_27/conv2d_109/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
0VAE/decoder/sequential_27/up_sampling2d_54/ConstConst*
_output_shapes
:*
dtype0*
valueB"      
2VAE/decoder/sequential_27/up_sampling2d_54/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Ò
.VAE/decoder/sequential_27/up_sampling2d_54/mulMul9VAE/decoder/sequential_27/up_sampling2d_54/Const:output:0;VAE/decoder/sequential_27/up_sampling2d_54/Const_1:output:0*
T0*
_output_shapes
:¡
GVAE/decoder/sequential_27/up_sampling2d_54/resize/ResizeNearestNeighborResizeNearestNeighbor7VAE/decoder/sequential_27/conv2d_109/Relu:activations:02VAE/decoder/sequential_27/up_sampling2d_54/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(( *
half_pixel_centers(Æ
:VAE/decoder/sequential_27/conv2d_110/Conv2D/ReadVariableOpReadVariableOpCvae_decoder_sequential_27_conv2d_110_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0µ
+VAE/decoder/sequential_27/conv2d_110/Conv2DConv2DXVAE/decoder/sequential_27/up_sampling2d_54/resize/ResizeNearestNeighbor:resized_images:0BVAE/decoder/sequential_27/conv2d_110/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((*
paddingSAME*
strides
¼
;VAE/decoder/sequential_27/conv2d_110/BiasAdd/ReadVariableOpReadVariableOpDvae_decoder_sequential_27_conv2d_110_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ì
,VAE/decoder/sequential_27/conv2d_110/BiasAddBiasAdd4VAE/decoder/sequential_27/conv2d_110/Conv2D:output:0CVAE/decoder/sequential_27/conv2d_110/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((¢
)VAE/decoder/sequential_27/conv2d_110/ReluRelu5VAE/decoder/sequential_27/conv2d_110/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ((
0VAE/decoder/sequential_27/up_sampling2d_55/ConstConst*
_output_shapes
:*
dtype0*
valueB"(   (   
2VAE/decoder/sequential_27/up_sampling2d_55/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Ò
.VAE/decoder/sequential_27/up_sampling2d_55/mulMul9VAE/decoder/sequential_27/up_sampling2d_55/Const:output:0;VAE/decoder/sequential_27/up_sampling2d_55/Const_1:output:0*
T0*
_output_shapes
:¡
GVAE/decoder/sequential_27/up_sampling2d_55/resize/ResizeNearestNeighborResizeNearestNeighbor7VAE/decoder/sequential_27/conv2d_110/Relu:activations:02VAE/decoder/sequential_27/up_sampling2d_55/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP*
half_pixel_centers(Æ
:VAE/decoder/sequential_27/conv2d_111/Conv2D/ReadVariableOpReadVariableOpCvae_decoder_sequential_27_conv2d_111_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0µ
+VAE/decoder/sequential_27/conv2d_111/Conv2DConv2DXVAE/decoder/sequential_27/up_sampling2d_55/resize/ResizeNearestNeighbor:resized_images:0BVAE/decoder/sequential_27/conv2d_111/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP*
paddingSAME*
strides
¼
;VAE/decoder/sequential_27/conv2d_111/BiasAdd/ReadVariableOpReadVariableOpDvae_decoder_sequential_27_conv2d_111_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ì
,VAE/decoder/sequential_27/conv2d_111/BiasAddBiasAdd4VAE/decoder/sequential_27/conv2d_111/Conv2D:output:0CVAE/decoder/sequential_27/conv2d_111/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP¨
,VAE/decoder/sequential_27/conv2d_111/SigmoidSigmoid5VAE/decoder/sequential_27/conv2d_111/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPPi
VAE/kl_9/SquareSquareVAE/z_mean/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
VAE/kl_9/subSubVAE/z_log_var/BiasAdd:output:0VAE/kl_9/Square:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
VAE/kl_9/ExpExpVAE/z_log_var/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
VAE/kl_9/sub_1SubVAE/kl_9/sub:z:0VAE/kl_9/Exp:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿS
VAE/kl_9/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?u
VAE/kl_9/addAddV2VAE/kl_9/sub_1:z:0VAE/kl_9/add/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
VAE/kl_9/ConstConst*
_output_shapes
:*
dtype0*
valueB"       a
VAE/kl_9/MeanMeanVAE/kl_9/add:z:0VAE/kl_9/Const:output:0*
T0*
_output_shapes
: S
VAE/kl_9/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL½e
VAE/kl_9/mulMulVAE/kl_9/mul/x:output:0VAE/kl_9/Mean:output:0*
T0*
_output_shapes
: 
IdentityIdentity0VAE/decoder/sequential_27/conv2d_111/Sigmoid:y:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPPý	
NoOpNoOp<^VAE/decoder/sequential_27/conv2d_108/BiasAdd/ReadVariableOp;^VAE/decoder/sequential_27/conv2d_108/Conv2D/ReadVariableOp<^VAE/decoder/sequential_27/conv2d_109/BiasAdd/ReadVariableOp;^VAE/decoder/sequential_27/conv2d_109/Conv2D/ReadVariableOp<^VAE/decoder/sequential_27/conv2d_110/BiasAdd/ReadVariableOp;^VAE/decoder/sequential_27/conv2d_110/Conv2D/ReadVariableOp<^VAE/decoder/sequential_27/conv2d_111/BiasAdd/ReadVariableOp;^VAE/decoder/sequential_27/conv2d_111/Conv2D/ReadVariableOp$^VAE/dense_17/BiasAdd/ReadVariableOp#^VAE/dense_17/MatMul/ReadVariableOp<^VAE/encoder/sequential_26/conv2d_104/BiasAdd/ReadVariableOp;^VAE/encoder/sequential_26/conv2d_104/Conv2D/ReadVariableOp<^VAE/encoder/sequential_26/conv2d_105/BiasAdd/ReadVariableOp;^VAE/encoder/sequential_26/conv2d_105/Conv2D/ReadVariableOp<^VAE/encoder/sequential_26/conv2d_106/BiasAdd/ReadVariableOp;^VAE/encoder/sequential_26/conv2d_106/Conv2D/ReadVariableOp<^VAE/encoder/sequential_26/conv2d_107/BiasAdd/ReadVariableOp;^VAE/encoder/sequential_26/conv2d_107/Conv2D/ReadVariableOp%^VAE/z_log_var/BiasAdd/ReadVariableOp$^VAE/z_log_var/MatMul/ReadVariableOp"^VAE/z_mean/BiasAdd/ReadVariableOp!^VAE/z_mean/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:ÿÿÿÿÿÿÿÿÿPP: : : : : : : : : : : : : : : : : : : : : : 2z
;VAE/decoder/sequential_27/conv2d_108/BiasAdd/ReadVariableOp;VAE/decoder/sequential_27/conv2d_108/BiasAdd/ReadVariableOp2x
:VAE/decoder/sequential_27/conv2d_108/Conv2D/ReadVariableOp:VAE/decoder/sequential_27/conv2d_108/Conv2D/ReadVariableOp2z
;VAE/decoder/sequential_27/conv2d_109/BiasAdd/ReadVariableOp;VAE/decoder/sequential_27/conv2d_109/BiasAdd/ReadVariableOp2x
:VAE/decoder/sequential_27/conv2d_109/Conv2D/ReadVariableOp:VAE/decoder/sequential_27/conv2d_109/Conv2D/ReadVariableOp2z
;VAE/decoder/sequential_27/conv2d_110/BiasAdd/ReadVariableOp;VAE/decoder/sequential_27/conv2d_110/BiasAdd/ReadVariableOp2x
:VAE/decoder/sequential_27/conv2d_110/Conv2D/ReadVariableOp:VAE/decoder/sequential_27/conv2d_110/Conv2D/ReadVariableOp2z
;VAE/decoder/sequential_27/conv2d_111/BiasAdd/ReadVariableOp;VAE/decoder/sequential_27/conv2d_111/BiasAdd/ReadVariableOp2x
:VAE/decoder/sequential_27/conv2d_111/Conv2D/ReadVariableOp:VAE/decoder/sequential_27/conv2d_111/Conv2D/ReadVariableOp2J
#VAE/dense_17/BiasAdd/ReadVariableOp#VAE/dense_17/BiasAdd/ReadVariableOp2H
"VAE/dense_17/MatMul/ReadVariableOp"VAE/dense_17/MatMul/ReadVariableOp2z
;VAE/encoder/sequential_26/conv2d_104/BiasAdd/ReadVariableOp;VAE/encoder/sequential_26/conv2d_104/BiasAdd/ReadVariableOp2x
:VAE/encoder/sequential_26/conv2d_104/Conv2D/ReadVariableOp:VAE/encoder/sequential_26/conv2d_104/Conv2D/ReadVariableOp2z
;VAE/encoder/sequential_26/conv2d_105/BiasAdd/ReadVariableOp;VAE/encoder/sequential_26/conv2d_105/BiasAdd/ReadVariableOp2x
:VAE/encoder/sequential_26/conv2d_105/Conv2D/ReadVariableOp:VAE/encoder/sequential_26/conv2d_105/Conv2D/ReadVariableOp2z
;VAE/encoder/sequential_26/conv2d_106/BiasAdd/ReadVariableOp;VAE/encoder/sequential_26/conv2d_106/BiasAdd/ReadVariableOp2x
:VAE/encoder/sequential_26/conv2d_106/Conv2D/ReadVariableOp:VAE/encoder/sequential_26/conv2d_106/Conv2D/ReadVariableOp2z
;VAE/encoder/sequential_26/conv2d_107/BiasAdd/ReadVariableOp;VAE/encoder/sequential_26/conv2d_107/BiasAdd/ReadVariableOp2x
:VAE/encoder/sequential_26/conv2d_107/Conv2D/ReadVariableOp:VAE/encoder/sequential_26/conv2d_107/Conv2D/ReadVariableOp2L
$VAE/z_log_var/BiasAdd/ReadVariableOp$VAE/z_log_var/BiasAdd/ReadVariableOp2J
#VAE/z_log_var/MatMul/ReadVariableOp#VAE/z_log_var/MatMul/ReadVariableOp2F
!VAE/z_mean/BiasAdd/ReadVariableOp!VAE/z_mean/BiasAdd/ReadVariableOp2D
 VAE/z_mean/MatMul/ReadVariableOp VAE/z_mean/MatMul/ReadVariableOp:Y U
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿPP
"
_user_specified_name
input_39
%
«
H__inference_sequential_27_layer_call_and_return_conditional_losses_99472

inputs*
conv2d_108_99412:@@
conv2d_108_99414:@*
conv2d_109_99430:@ 
conv2d_109_99432: *
conv2d_110_99448: 
conv2d_110_99450:*
conv2d_111_99466:
conv2d_111_99468:
identity¢"conv2d_108/StatefulPartitionedCall¢"conv2d_109/StatefulPartitionedCall¢"conv2d_110/StatefulPartitionedCall¢"conv2d_111/StatefulPartitionedCallä
 up_sampling2d_52/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_52_layer_call_and_return_conditional_losses_99332µ
"conv2d_108/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_52/PartitionedCall:output:0conv2d_108_99412conv2d_108_99414*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_108_layer_call_and_return_conditional_losses_99411
 up_sampling2d_53/PartitionedCallPartitionedCall+conv2d_108/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_53_layer_call_and_return_conditional_losses_99351µ
"conv2d_109/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_53/PartitionedCall:output:0conv2d_109_99430conv2d_109_99432*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_109_layer_call_and_return_conditional_losses_99429
 up_sampling2d_54/PartitionedCallPartitionedCall+conv2d_109/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_54_layer_call_and_return_conditional_losses_99370µ
"conv2d_110/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_54/PartitionedCall:output:0conv2d_110_99448conv2d_110_99450*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_110_layer_call_and_return_conditional_losses_99447
 up_sampling2d_55/PartitionedCallPartitionedCall+conv2d_110/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_55_layer_call_and_return_conditional_losses_99389µ
"conv2d_111/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_55/PartitionedCall:output:0conv2d_111_99466conv2d_111_99468*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_111_layer_call_and_return_conditional_losses_99465
IdentityIdentity+conv2d_111/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÚ
NoOpNoOp#^conv2d_108/StatefulPartitionedCall#^conv2d_109/StatefulPartitionedCall#^conv2d_110/StatefulPartitionedCall#^conv2d_111/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ@: : : : : : : : 2H
"conv2d_108/StatefulPartitionedCall"conv2d_108/StatefulPartitionedCall2H
"conv2d_109/StatefulPartitionedCall"conv2d_109/StatefulPartitionedCall2H
"conv2d_110/StatefulPartitionedCall"conv2d_110/StatefulPartitionedCall2H
"conv2d_111/StatefulPartitionedCall"conv2d_111/StatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
%
«
H__inference_sequential_27_layer_call_and_return_conditional_losses_99582

inputs*
conv2d_108_99558:@@
conv2d_108_99560:@*
conv2d_109_99564:@ 
conv2d_109_99566: *
conv2d_110_99570: 
conv2d_110_99572:*
conv2d_111_99576:
conv2d_111_99578:
identity¢"conv2d_108/StatefulPartitionedCall¢"conv2d_109/StatefulPartitionedCall¢"conv2d_110/StatefulPartitionedCall¢"conv2d_111/StatefulPartitionedCallä
 up_sampling2d_52/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_52_layer_call_and_return_conditional_losses_99332µ
"conv2d_108/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_52/PartitionedCall:output:0conv2d_108_99558conv2d_108_99560*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_108_layer_call_and_return_conditional_losses_99411
 up_sampling2d_53/PartitionedCallPartitionedCall+conv2d_108/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_53_layer_call_and_return_conditional_losses_99351µ
"conv2d_109/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_53/PartitionedCall:output:0conv2d_109_99564conv2d_109_99566*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_109_layer_call_and_return_conditional_losses_99429
 up_sampling2d_54/PartitionedCallPartitionedCall+conv2d_109/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_54_layer_call_and_return_conditional_losses_99370µ
"conv2d_110/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_54/PartitionedCall:output:0conv2d_110_99570conv2d_110_99572*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_110_layer_call_and_return_conditional_losses_99447
 up_sampling2d_55/PartitionedCallPartitionedCall+conv2d_110/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_up_sampling2d_55_layer_call_and_return_conditional_losses_99389µ
"conv2d_111/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_55/PartitionedCall:output:0conv2d_111_99576conv2d_111_99578*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_111_layer_call_and_return_conditional_losses_99465
IdentityIdentity+conv2d_111/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÚ
NoOpNoOp#^conv2d_108/StatefulPartitionedCall#^conv2d_109/StatefulPartitionedCall#^conv2d_110/StatefulPartitionedCall#^conv2d_111/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ@: : : : : : : : 2H
"conv2d_108/StatefulPartitionedCall"conv2d_108/StatefulPartitionedCall2H
"conv2d_109/StatefulPartitionedCall"conv2d_109/StatefulPartitionedCall2H
"conv2d_110/StatefulPartitionedCall"conv2d_110/StatefulPartitionedCall2H
"conv2d_111/StatefulPartitionedCall"conv2d_111/StatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs

g
K__inference_up_sampling2d_52_layer_call_and_return_conditional_losses_99332

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:½
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:µ
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs"ÛL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*¼
serving_default¨
E
input_399
serving_default_input_39:0ÿÿÿÿÿÿÿÿÿPPC
decoder8
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿPPtensorflow/serving/predict:¡
õ
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer-9
layer-10
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_network
"
_tf_keras_input_layer
²
encoder
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
¥
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses"
_tf_keras_layer
»

"kernel
#bias
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses"
_tf_keras_layer
»

*kernel
+bias
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses"
_tf_keras_layer
¥
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses"
_tf_keras_layer
»

8kernel
9bias
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses"
_tf_keras_layer
¥
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses"
_tf_keras_layer
²
Fdecoder
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
K__call__
*L&call_and_return_all_conditional_losses"
_tf_keras_layer
¥
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
Q__call__
*R&call_and_return_all_conditional_losses"
_tf_keras_layer
¥
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
W__call__
*X&call_and_return_all_conditional_losses"
_tf_keras_layer

Yiter

Zbeta_1

[beta_2
	\decay
]learning_rate"mÑ#mÒ*mÓ+mÔ8mÕ9mÖ^m×_mØ`mÙamÚbmÛcmÜdmÝemÞfmßgmàhmáimâjmãkmälmåmmæ"vç#vè*vé+vê8vë9vì^ví_vî`vïavðbvñcvòdvóevôfvõgvöhv÷ivøjvùkvúlvûmvü"
	optimizer
Æ
^0
_1
`2
a3
b4
c5
d6
e7
"8
#9
*10
+11
812
913
f14
g15
h16
i17
j18
k19
l20
m21"
trackable_list_wrapper
Æ
^0
_1
`2
a3
b4
c5
d6
e7
"8
#9
*10
+11
812
913
f14
g15
h16
i17
j18
k19
l20
m21"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
nnon_trainable_variables

olayers
pmetrics
qlayer_regularization_losses
rlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ý2Ú
#__inference_VAE_layer_call_fn_99977
$__inference_VAE_layer_call_fn_100592
$__inference_VAE_layer_call_fn_100642
$__inference_VAE_layer_call_fn_100416À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ê2Ç
?__inference_VAE_layer_call_and_return_conditional_losses_100781
?__inference_VAE_layer_call_and_return_conditional_losses_100920
?__inference_VAE_layer_call_and_return_conditional_losses_100476
?__inference_VAE_layer_call_and_return_conditional_losses_100536À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ÌBÉ
 __inference__wrapped_model_99046input_39"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
,
sserving_default"
signature_map
Æ
tlayer_with_weights-0
tlayer-0
ulayer_with_weights-1
ulayer-1
vlayer_with_weights-2
vlayer-2
wlayer_with_weights-3
wlayer-3
x	variables
ytrainable_variables
zregularization_losses
{	keras_api
|__call__
*}&call_and_return_all_conditional_losses"
_tf_keras_sequential
X
^0
_1
`2
a3
b4
c5
d6
e7"
trackable_list_wrapper
X
^0
_1
`2
a3
b4
c5
d6
e7"
trackable_list_wrapper
 "
trackable_list_wrapper
°
~non_trainable_variables

layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
2
(__inference_encoder_layer_call_fn_100992
(__inference_encoder_layer_call_fn_101013´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ä2Á
C__inference_encoder_layer_call_and_return_conditional_losses_101045
C__inference_encoder_layer_call_and_return_conditional_losses_101077´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses"
_generic_user_object
Õ2Ò
+__inference_flatten_13_layer_call_fn_101082¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ð2í
F__inference_flatten_13_layer_call_and_return_conditional_losses_101088¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
!:
À2z_mean/kernel
:2z_mean/bias
.
"0
#1"
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses"
_generic_user_object
Ñ2Î
'__inference_z_mean_layer_call_fn_101097¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ì2é
B__inference_z_mean_layer_call_and_return_conditional_losses_101107¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
$:"
À2z_log_var/kernel
:2z_log_var/bias
.
*0
+1"
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses"
_generic_user_object
Ô2Ñ
*__inference_z_log_var_layer_call_fn_101116¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ï2ì
E__inference_z_log_var_layer_call_and_return_conditional_losses_101126¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses"
_generic_user_object
Õ2Ò
+__inference_sampling_9_layer_call_fn_101132¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ð2í
F__inference_sampling_9_layer_call_and_return_conditional_losses_101158¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
#:!
À2dense_17/kernel
:À2dense_17/bias
.
80
91"
trackable_list_wrapper
.
80
91"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses"
_generic_user_object
Ó2Ð
)__inference_dense_17_layer_call_fn_101167¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
D__inference_dense_17_layer_call_and_return_conditional_losses_101178¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
 layer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses"
_generic_user_object
Õ2Ò
+__inference_reshape_13_layer_call_fn_101183¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ð2í
F__inference_reshape_13_layer_call_and_return_conditional_losses_101197¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 

¡layer-0
¢layer_with_weights-0
¢layer-1
£layer-2
¤layer_with_weights-1
¤layer-3
¥layer-4
¦layer_with_weights-2
¦layer-5
§layer-6
¨layer_with_weights-3
¨layer-7
©	variables
ªtrainable_variables
«regularization_losses
¬	keras_api
­__call__
+®&call_and_return_all_conditional_losses"
_tf_keras_sequential
X
f0
g1
h2
i3
j4
k5
l6
m7"
trackable_list_wrapper
X
f0
g1
h2
i3
j4
k5
l6
m7"
trackable_list_wrapper
 "
trackable_list_wrapper
²
¯non_trainable_variables
°layers
±metrics
 ²layer_regularization_losses
³layer_metrics
G	variables
Htrainable_variables
Iregularization_losses
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses"
_generic_user_object
2
(__inference_decoder_layer_call_fn_101218
(__inference_decoder_layer_call_fn_101239¯
¦²¢
FullArgSpec$
args
jself
jz

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
¿2¼
C__inference_decoder_layer_call_and_return_conditional_losses_101287
C__inference_decoder_layer_call_and_return_conditional_losses_101335¯
¦²¢
FullArgSpec$
args
jself
jz

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
´non_trainable_variables
µlayers
¶metrics
 ·layer_regularization_losses
¸layer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses"
_generic_user_object
â2ß
%__inference_kl_9_layer_call_fn_101341µ
¬²¨
FullArgSpec$
args
jself
jinputs
jreg
varargs
 
varkw
 
defaults¢
	Y¹?

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ý2ú
@__inference_kl_9_layer_call_and_return_conditional_losses_101356µ
¬²¨
FullArgSpec$
args
jself
jinputs
jreg
varargs
 
varkw
 
defaults¢
	Y¹?

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
¹non_trainable_variables
ºlayers
»metrics
 ¼layer_regularization_losses
½layer_metrics
S	variables
Ttrainable_variables
Uregularization_losses
W__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses"
_generic_user_object
Õ2Ò
+__inference_add_loss_6_layer_call_fn_101362¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ð2í
F__inference_add_loss_6_layer_call_and_return_conditional_losses_101367¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
+:)	2conv2d_104/kernel
:	2conv2d_104/bias
+:)	2conv2d_105/kernel
:2conv2d_105/bias
+:) 2conv2d_106/kernel
: 2conv2d_106/bias
+:) @2conv2d_107/kernel
:@2conv2d_107/bias
+:)@@2conv2d_108/kernel
:@2conv2d_108/bias
+:)@ 2conv2d_109/kernel
: 2conv2d_109/bias
+:) 2conv2d_110/kernel
:2conv2d_110/bias
+:)2conv2d_111/kernel
:2conv2d_111/bias
 "
trackable_list_wrapper
n
0
1
2
3
4
5
6
7
	8

9
10"
trackable_list_wrapper
(
¾0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÌBÉ
$__inference_signature_wrapper_100971input_39"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Á

^kernel
_bias
¿	variables
Àtrainable_variables
Áregularization_losses
Â	keras_api
Ã__call__
+Ä&call_and_return_all_conditional_losses"
_tf_keras_layer
Á

`kernel
abias
Å	variables
Ætrainable_variables
Çregularization_losses
È	keras_api
É__call__
+Ê&call_and_return_all_conditional_losses"
_tf_keras_layer
Á

bkernel
cbias
Ë	variables
Ìtrainable_variables
Íregularization_losses
Î	keras_api
Ï__call__
+Ð&call_and_return_all_conditional_losses"
_tf_keras_layer
Á

dkernel
ebias
Ñ	variables
Òtrainable_variables
Óregularization_losses
Ô	keras_api
Õ__call__
+Ö&call_and_return_all_conditional_losses"
_tf_keras_layer
X
^0
_1
`2
a3
b4
c5
d6
e7"
trackable_list_wrapper
X
^0
_1
`2
a3
b4
c5
d6
e7"
trackable_list_wrapper
 "
trackable_list_wrapper
²
×non_trainable_variables
Ølayers
Ùmetrics
 Úlayer_regularization_losses
Ûlayer_metrics
x	variables
ytrainable_variables
zregularization_losses
|__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses"
_generic_user_object
2
-__inference_sequential_26_layer_call_fn_99141
.__inference_sequential_26_layer_call_fn_101388
.__inference_sequential_26_layer_call_fn_101409
-__inference_sequential_26_layer_call_fn_99268À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ð2í
I__inference_sequential_26_layer_call_and_return_conditional_losses_101441
I__inference_sequential_26_layer_call_and_return_conditional_losses_101473
H__inference_sequential_26_layer_call_and_return_conditional_losses_99292
H__inference_sequential_26_layer_call_and_return_conditional_losses_99316À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
«
Ü	variables
Ýtrainable_variables
Þregularization_losses
ß	keras_api
à__call__
+á&call_and_return_all_conditional_losses"
_tf_keras_layer
Á

fkernel
gbias
â	variables
ãtrainable_variables
äregularization_losses
å	keras_api
æ__call__
+ç&call_and_return_all_conditional_losses"
_tf_keras_layer
«
è	variables
étrainable_variables
êregularization_losses
ë	keras_api
ì__call__
+í&call_and_return_all_conditional_losses"
_tf_keras_layer
Á

hkernel
ibias
î	variables
ïtrainable_variables
ðregularization_losses
ñ	keras_api
ò__call__
+ó&call_and_return_all_conditional_losses"
_tf_keras_layer
«
ô	variables
õtrainable_variables
öregularization_losses
÷	keras_api
ø__call__
+ù&call_and_return_all_conditional_losses"
_tf_keras_layer
Á

jkernel
kbias
ú	variables
ûtrainable_variables
üregularization_losses
ý	keras_api
þ__call__
+ÿ&call_and_return_all_conditional_losses"
_tf_keras_layer
«
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Á

lkernel
mbias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
X
f0
g1
h2
i3
j4
k5
l6
m7"
trackable_list_wrapper
X
f0
g1
h2
i3
j4
k5
l6
m7"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
©	variables
ªtrainable_variables
«regularization_losses
­__call__
+®&call_and_return_all_conditional_losses
'®"call_and_return_conditional_losses"
_generic_user_object
2
-__inference_sequential_27_layer_call_fn_99491
.__inference_sequential_27_layer_call_fn_101494
.__inference_sequential_27_layer_call_fn_101515
-__inference_sequential_27_layer_call_fn_99622À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ð2í
I__inference_sequential_27_layer_call_and_return_conditional_losses_101563
I__inference_sequential_27_layer_call_and_return_conditional_losses_101611
H__inference_sequential_27_layer_call_and_return_conditional_losses_99650
H__inference_sequential_27_layer_call_and_return_conditional_losses_99678À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 "
trackable_list_wrapper
'
F0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
R

total

count
	variables
	keras_api"
_tf_keras_metric
.
^0
_1"
trackable_list_wrapper
.
^0
_1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
¿	variables
Àtrainable_variables
Áregularization_losses
Ã__call__
+Ä&call_and_return_all_conditional_losses
'Ä"call_and_return_conditional_losses"
_generic_user_object
Õ2Ò
+__inference_conv2d_104_layer_call_fn_101620¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ð2í
F__inference_conv2d_104_layer_call_and_return_conditional_losses_101631¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
.
`0
a1"
trackable_list_wrapper
.
`0
a1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
Å	variables
Ætrainable_variables
Çregularization_losses
É__call__
+Ê&call_and_return_all_conditional_losses
'Ê"call_and_return_conditional_losses"
_generic_user_object
Õ2Ò
+__inference_conv2d_105_layer_call_fn_101640¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ð2í
F__inference_conv2d_105_layer_call_and_return_conditional_losses_101651¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
.
b0
c1"
trackable_list_wrapper
.
b0
c1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
 layers
¡metrics
 ¢layer_regularization_losses
£layer_metrics
Ë	variables
Ìtrainable_variables
Íregularization_losses
Ï__call__
+Ð&call_and_return_all_conditional_losses
'Ð"call_and_return_conditional_losses"
_generic_user_object
Õ2Ò
+__inference_conv2d_106_layer_call_fn_101660¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ð2í
F__inference_conv2d_106_layer_call_and_return_conditional_losses_101671¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
.
d0
e1"
trackable_list_wrapper
.
d0
e1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
¤non_trainable_variables
¥layers
¦metrics
 §layer_regularization_losses
¨layer_metrics
Ñ	variables
Òtrainable_variables
Óregularization_losses
Õ__call__
+Ö&call_and_return_all_conditional_losses
'Ö"call_and_return_conditional_losses"
_generic_user_object
Õ2Ò
+__inference_conv2d_107_layer_call_fn_101680¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ð2í
F__inference_conv2d_107_layer_call_and_return_conditional_losses_101691¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
<
t0
u1
v2
w3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
©non_trainable_variables
ªlayers
«metrics
 ¬layer_regularization_losses
­layer_metrics
Ü	variables
Ýtrainable_variables
Þregularization_losses
à__call__
+á&call_and_return_all_conditional_losses
'á"call_and_return_conditional_losses"
_generic_user_object
Û2Ø
1__inference_up_sampling2d_52_layer_call_fn_101696¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ö2ó
L__inference_up_sampling2d_52_layer_call_and_return_conditional_losses_101708¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
.
f0
g1"
trackable_list_wrapper
.
f0
g1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
®non_trainable_variables
¯layers
°metrics
 ±layer_regularization_losses
²layer_metrics
â	variables
ãtrainable_variables
äregularization_losses
æ__call__
+ç&call_and_return_all_conditional_losses
'ç"call_and_return_conditional_losses"
_generic_user_object
Õ2Ò
+__inference_conv2d_108_layer_call_fn_101717¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ð2í
F__inference_conv2d_108_layer_call_and_return_conditional_losses_101728¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
³non_trainable_variables
´layers
µmetrics
 ¶layer_regularization_losses
·layer_metrics
è	variables
étrainable_variables
êregularization_losses
ì__call__
+í&call_and_return_all_conditional_losses
'í"call_and_return_conditional_losses"
_generic_user_object
Û2Ø
1__inference_up_sampling2d_53_layer_call_fn_101733¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ö2ó
L__inference_up_sampling2d_53_layer_call_and_return_conditional_losses_101745¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
.
h0
i1"
trackable_list_wrapper
.
h0
i1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
¸non_trainable_variables
¹layers
ºmetrics
 »layer_regularization_losses
¼layer_metrics
î	variables
ïtrainable_variables
ðregularization_losses
ò__call__
+ó&call_and_return_all_conditional_losses
'ó"call_and_return_conditional_losses"
_generic_user_object
Õ2Ò
+__inference_conv2d_109_layer_call_fn_101754¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ð2í
F__inference_conv2d_109_layer_call_and_return_conditional_losses_101765¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
½non_trainable_variables
¾layers
¿metrics
 Àlayer_regularization_losses
Álayer_metrics
ô	variables
õtrainable_variables
öregularization_losses
ø__call__
+ù&call_and_return_all_conditional_losses
'ù"call_and_return_conditional_losses"
_generic_user_object
Û2Ø
1__inference_up_sampling2d_54_layer_call_fn_101770¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ö2ó
L__inference_up_sampling2d_54_layer_call_and_return_conditional_losses_101782¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
.
j0
k1"
trackable_list_wrapper
.
j0
k1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Ânon_trainable_variables
Ãlayers
Ämetrics
 Ålayer_regularization_losses
Ælayer_metrics
ú	variables
ûtrainable_variables
üregularization_losses
þ__call__
+ÿ&call_and_return_all_conditional_losses
'ÿ"call_and_return_conditional_losses"
_generic_user_object
Õ2Ò
+__inference_conv2d_110_layer_call_fn_101791¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ð2í
F__inference_conv2d_110_layer_call_and_return_conditional_losses_101802¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Çnon_trainable_variables
Èlayers
Émetrics
 Êlayer_regularization_losses
Ëlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
Û2Ø
1__inference_up_sampling2d_55_layer_call_fn_101807¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ö2ó
L__inference_up_sampling2d_55_layer_call_and_return_conditional_losses_101819¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
.
l0
m1"
trackable_list_wrapper
.
l0
m1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Ìnon_trainable_variables
Ílayers
Îmetrics
 Ïlayer_regularization_losses
Ðlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
Õ2Ò
+__inference_conv2d_111_layer_call_fn_101828¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ð2í
F__inference_conv2d_111_layer_call_and_return_conditional_losses_101839¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
`
¡0
¢1
£2
¤3
¥4
¦5
§6
¨7"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
:  (2total
:  (2count
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
&:$
À2Adam/z_mean/kernel/m
:2Adam/z_mean/bias/m
):'
À2Adam/z_log_var/kernel/m
": 2Adam/z_log_var/bias/m
(:&
À2Adam/dense_17/kernel/m
!:À2Adam/dense_17/bias/m
0:.	2Adam/conv2d_104/kernel/m
": 	2Adam/conv2d_104/bias/m
0:.	2Adam/conv2d_105/kernel/m
": 2Adam/conv2d_105/bias/m
0:. 2Adam/conv2d_106/kernel/m
":  2Adam/conv2d_106/bias/m
0:. @2Adam/conv2d_107/kernel/m
": @2Adam/conv2d_107/bias/m
0:.@@2Adam/conv2d_108/kernel/m
": @2Adam/conv2d_108/bias/m
0:.@ 2Adam/conv2d_109/kernel/m
":  2Adam/conv2d_109/bias/m
0:. 2Adam/conv2d_110/kernel/m
": 2Adam/conv2d_110/bias/m
0:.2Adam/conv2d_111/kernel/m
": 2Adam/conv2d_111/bias/m
&:$
À2Adam/z_mean/kernel/v
:2Adam/z_mean/bias/v
):'
À2Adam/z_log_var/kernel/v
": 2Adam/z_log_var/bias/v
(:&
À2Adam/dense_17/kernel/v
!:À2Adam/dense_17/bias/v
0:.	2Adam/conv2d_104/kernel/v
": 	2Adam/conv2d_104/bias/v
0:.	2Adam/conv2d_105/kernel/v
": 2Adam/conv2d_105/bias/v
0:. 2Adam/conv2d_106/kernel/v
":  2Adam/conv2d_106/bias/v
0:. @2Adam/conv2d_107/kernel/v
": @2Adam/conv2d_107/bias/v
0:.@@2Adam/conv2d_108/kernel/v
": @2Adam/conv2d_108/bias/v
0:.@ 2Adam/conv2d_109/kernel/v
":  2Adam/conv2d_109/bias/v
0:. 2Adam/conv2d_110/kernel/v
": 2Adam/conv2d_110/bias/v
0:.2Adam/conv2d_111/kernel/v
": 2Adam/conv2d_111/bias/vÜ
?__inference_VAE_layer_call_and_return_conditional_losses_100476^_`abcde"#*+89fghijklmA¢>
7¢4
*'
input_39ÿÿÿÿÿÿÿÿÿPP
p 

 
ª ";¢8
# 
0ÿÿÿÿÿÿÿÿÿPP

	
1/0 Ü
?__inference_VAE_layer_call_and_return_conditional_losses_100536^_`abcde"#*+89fghijklmA¢>
7¢4
*'
input_39ÿÿÿÿÿÿÿÿÿPP
p

 
ª ";¢8
# 
0ÿÿÿÿÿÿÿÿÿPP

	
1/0 Ú
?__inference_VAE_layer_call_and_return_conditional_losses_100781^_`abcde"#*+89fghijklm?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿPP
p 

 
ª ";¢8
# 
0ÿÿÿÿÿÿÿÿÿPP

	
1/0 Ú
?__inference_VAE_layer_call_and_return_conditional_losses_100920^_`abcde"#*+89fghijklm?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿPP
p

 
ª ";¢8
# 
0ÿÿÿÿÿÿÿÿÿPP

	
1/0 ¥
$__inference_VAE_layer_call_fn_100416}^_`abcde"#*+89fghijklmA¢>
7¢4
*'
input_39ÿÿÿÿÿÿÿÿÿPP
p

 
ª " ÿÿÿÿÿÿÿÿÿPP£
$__inference_VAE_layer_call_fn_100592{^_`abcde"#*+89fghijklm?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿPP
p 

 
ª " ÿÿÿÿÿÿÿÿÿPP£
$__inference_VAE_layer_call_fn_100642{^_`abcde"#*+89fghijklm?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿPP
p

 
ª " ÿÿÿÿÿÿÿÿÿPP¤
#__inference_VAE_layer_call_fn_99977}^_`abcde"#*+89fghijklmA¢>
7¢4
*'
input_39ÿÿÿÿÿÿÿÿÿPP
p 

 
ª " ÿÿÿÿÿÿÿÿÿPP³
 __inference__wrapped_model_99046^_`abcde"#*+89fghijklm9¢6
/¢,
*'
input_39ÿÿÿÿÿÿÿÿÿPP
ª "9ª6
4
decoder)&
decoderÿÿÿÿÿÿÿÿÿPP
F__inference_add_loss_6_layer_call_and_return_conditional_losses_101367D¢
¢

inputs 
ª ""¢


0 

	
1/0 X
+__inference_add_loss_6_layer_call_fn_101362)¢
¢

inputs 
ª " ¶
F__inference_conv2d_104_layer_call_and_return_conditional_losses_101631l^_7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿPP
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ((	
 
+__inference_conv2d_104_layer_call_fn_101620_^_7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿPP
ª " ÿÿÿÿÿÿÿÿÿ((	¶
F__inference_conv2d_105_layer_call_and_return_conditional_losses_101651l`a7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ((	
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ
 
+__inference_conv2d_105_layer_call_fn_101640_`a7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ((	
ª " ÿÿÿÿÿÿÿÿÿ¶
F__inference_conv2d_106_layer_call_and_return_conditional_losses_101671lbc7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ

 
 
+__inference_conv2d_106_layer_call_fn_101660_bc7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
ª " ÿÿÿÿÿÿÿÿÿ

 ¶
F__inference_conv2d_107_layer_call_and_return_conditional_losses_101691lde7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ

 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ@
 
+__inference_conv2d_107_layer_call_fn_101680_de7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ

 
ª " ÿÿÿÿÿÿÿÿÿ@Û
F__inference_conv2d_108_layer_call_and_return_conditional_losses_101728fgI¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 ³
+__inference_conv2d_108_layer_call_fn_101717fgI¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@Û
F__inference_conv2d_109_layer_call_and_return_conditional_losses_101765hiI¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 ³
+__inference_conv2d_109_layer_call_fn_101754hiI¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ Û
F__inference_conv2d_110_layer_call_and_return_conditional_losses_101802jkI¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ³
+__inference_conv2d_110_layer_call_fn_101791jkI¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÛ
F__inference_conv2d_111_layer_call_and_return_conditional_losses_101839lmI¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ³
+__inference_conv2d_111_layer_call_fn_101828lmI¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸
C__inference_decoder_layer_call_and_return_conditional_losses_101287qfghijklm6¢3
,¢)
# 
zÿÿÿÿÿÿÿÿÿ@
p 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿPP
 ¸
C__inference_decoder_layer_call_and_return_conditional_losses_101335qfghijklm6¢3
,¢)
# 
zÿÿÿÿÿÿÿÿÿ@
p
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿPP
 
(__inference_decoder_layer_call_fn_101218dfghijklm6¢3
,¢)
# 
zÿÿÿÿÿÿÿÿÿ@
p 
ª " ÿÿÿÿÿÿÿÿÿPP
(__inference_decoder_layer_call_fn_101239dfghijklm6¢3
,¢)
# 
zÿÿÿÿÿÿÿÿÿ@
p
ª " ÿÿÿÿÿÿÿÿÿPP¦
D__inference_dense_17_layer_call_and_return_conditional_losses_101178^890¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿÀ
 ~
)__inference_dense_17_layer_call_fn_101167Q890¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿÀ½
C__inference_encoder_layer_call_and_return_conditional_losses_101045v^_`abcde;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿPP
p 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ@
 ½
C__inference_encoder_layer_call_and_return_conditional_losses_101077v^_`abcde;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿPP
p
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ@
 
(__inference_encoder_layer_call_fn_100992i^_`abcde;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿPP
p 
ª " ÿÿÿÿÿÿÿÿÿ@
(__inference_encoder_layer_call_fn_101013i^_`abcde;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿPP
p
ª " ÿÿÿÿÿÿÿÿÿ@«
F__inference_flatten_13_layer_call_and_return_conditional_losses_101088a7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ@
ª "&¢#

0ÿÿÿÿÿÿÿÿÿÀ
 
+__inference_flatten_13_layer_call_fn_101082T7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ@
ª "ÿÿÿÿÿÿÿÿÿÀÃ
@__inference_kl_9_layer_call_and_return_conditional_losses_101356g¢d
]¢Z
M¢J
# 
inputs/0ÿÿÿÿÿÿÿÿÿ
# 
inputs/1ÿÿÿÿÿÿÿÿÿ
	Y¹?
ª "¢


0 
 
%__inference_kl_9_layer_call_fn_101341rg¢d
]¢Z
M¢J
# 
inputs/0ÿÿÿÿÿÿÿÿÿ
# 
inputs/1ÿÿÿÿÿÿÿÿÿ
	Y¹?
ª " «
F__inference_reshape_13_layer_call_and_return_conditional_losses_101197a0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿÀ
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ@
 
+__inference_reshape_13_layer_call_fn_101183T0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿÀ
ª " ÿÿÿÿÿÿÿÿÿ@Ñ
F__inference_sampling_9_layer_call_and_return_conditional_losses_101158\¢Y
R¢O
M¢J
# 
inputs/0ÿÿÿÿÿÿÿÿÿ
# 
inputs/1ÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 ¨
+__inference_sampling_9_layer_call_fn_101132y\¢Y
R¢O
M¢J
# 
inputs/0ÿÿÿÿÿÿÿÿÿ
# 
inputs/1ÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿÇ
I__inference_sequential_26_layer_call_and_return_conditional_losses_101441z^_`abcde?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿPP
p 

 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ@
 Ç
I__inference_sequential_26_layer_call_and_return_conditional_losses_101473z^_`abcde?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿPP
p

 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ@
 Ñ
H__inference_sequential_26_layer_call_and_return_conditional_losses_99292^_`abcdeI¢F
?¢<
2/
conv2d_104_inputÿÿÿÿÿÿÿÿÿPP
p 

 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ@
 Ñ
H__inference_sequential_26_layer_call_and_return_conditional_losses_99316^_`abcdeI¢F
?¢<
2/
conv2d_104_inputÿÿÿÿÿÿÿÿÿPP
p

 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ@
 
.__inference_sequential_26_layer_call_fn_101388m^_`abcde?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿPP
p 

 
ª " ÿÿÿÿÿÿÿÿÿ@
.__inference_sequential_26_layer_call_fn_101409m^_`abcde?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿPP
p

 
ª " ÿÿÿÿÿÿÿÿÿ@¨
-__inference_sequential_26_layer_call_fn_99141w^_`abcdeI¢F
?¢<
2/
conv2d_104_inputÿÿÿÿÿÿÿÿÿPP
p 

 
ª " ÿÿÿÿÿÿÿÿÿ@¨
-__inference_sequential_26_layer_call_fn_99268w^_`abcdeI¢F
?¢<
2/
conv2d_104_inputÿÿÿÿÿÿÿÿÿPP
p

 
ª " ÿÿÿÿÿÿÿÿÿ@Ç
I__inference_sequential_27_layer_call_and_return_conditional_losses_101563zfghijklm?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ@
p 

 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿPP
 Ç
I__inference_sequential_27_layer_call_and_return_conditional_losses_101611zfghijklm?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ@
p

 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿPP
 Û
H__inference_sequential_27_layer_call_and_return_conditional_losses_99650fghijklmA¢>
7¢4
*'
input_40ÿÿÿÿÿÿÿÿÿ@
p 

 
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Û
H__inference_sequential_27_layer_call_and_return_conditional_losses_99678fghijklmA¢>
7¢4
*'
input_40ÿÿÿÿÿÿÿÿÿ@
p

 
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ±
.__inference_sequential_27_layer_call_fn_101494fghijklm?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ@
p 

 
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ±
.__inference_sequential_27_layer_call_fn_101515fghijklm?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ@
p

 
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ³
-__inference_sequential_27_layer_call_fn_99491fghijklmA¢>
7¢4
*'
input_40ÿÿÿÿÿÿÿÿÿ@
p 

 
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ³
-__inference_sequential_27_layer_call_fn_99622fghijklmA¢>
7¢4
*'
input_40ÿÿÿÿÿÿÿÿÿ@
p

 
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÃ
$__inference_signature_wrapper_100971^_`abcde"#*+89fghijklmE¢B
¢ 
;ª8
6
input_39*'
input_39ÿÿÿÿÿÿÿÿÿPP"9ª6
4
decoder)&
decoderÿÿÿÿÿÿÿÿÿPPï
L__inference_up_sampling2d_52_layer_call_and_return_conditional_losses_101708R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ç
1__inference_up_sampling2d_52_layer_call_fn_101696R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿï
L__inference_up_sampling2d_53_layer_call_and_return_conditional_losses_101745R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ç
1__inference_up_sampling2d_53_layer_call_fn_101733R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿï
L__inference_up_sampling2d_54_layer_call_and_return_conditional_losses_101782R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ç
1__inference_up_sampling2d_54_layer_call_fn_101770R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿï
L__inference_up_sampling2d_55_layer_call_and_return_conditional_losses_101819R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ç
1__inference_up_sampling2d_55_layer_call_fn_101807R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ§
E__inference_z_log_var_layer_call_and_return_conditional_losses_101126^*+0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿÀ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
*__inference_z_log_var_layer_call_fn_101116Q*+0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿÀ
ª "ÿÿÿÿÿÿÿÿÿ¤
B__inference_z_mean_layer_call_and_return_conditional_losses_101107^"#0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿÀ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 |
'__inference_z_mean_layer_call_fn_101097Q"#0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿÀ
ª "ÿÿÿÿÿÿÿÿÿ