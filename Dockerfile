# নতুন পাইথন ইমেজ ব্যবহার করা হয়েছে যা এখনকার সব সার্ভারে কাজ করবে
FROM python:3.10-slim-bookworm

# Dont Remove My Credit @AV_BOTz_UPDATE 
# This Repo Is By @BOT_OWNER26 
# For Any Kind Of Error Ask Us In Support Group @AV_SUPPORT_GROUP

# সিস্টেম আপডেট এবং প্রয়োজনীয় প্যাকেজ ইনস্টল
RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y git python3-pip && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# কাজের ডিরেক্টরি তৈরি এবং সেট করা
WORKDIR /AV_FILE_TO_LINK

# প্রথমে শুধু requirements.txt কপি করে ইনস্টল করা (বিল্ড স্পিড বাড়ানোর জন্য)
COPY requirements.txt .
RUN pip3 install --no-cache-dir -U pip && \
    pip3 install --no-cache-dir -U -r requirements.txt

# সব ফাইল ডিরেক্টরিতে কপি করা
COPY . .

# Dont Remove My Credit @AV_BOTz_UPDATE 
# This Repo Is By @BOT_OWNER26 
# For Any Kind Of Error Ask Us In Support Group @AV_SUPPORT_GROUP

# বট চালু করার কমান্ড
CMD ["python3", "bot.py"]
