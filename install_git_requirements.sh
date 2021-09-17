while read line
do
   export random_name=$(python -c "
import hashlib, random; 
print(hashlib.sha256(str(random.random()).encode()).hexdigest())")
   git clone $line /tmp/$random_name
   pip install /tmp/$random_name
   echo installed $line
done
