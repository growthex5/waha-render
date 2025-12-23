# অফিসিয়াল WAHA ইমেজ
FROM devlikeapro/waha:latest

# রুট ইউজার হিসেবে পারমিশন ফিক্স করা
USER root

# সেশন ফোল্ডার তৈরি (যাতে ক্র্যাশ না করে)
RUN mkdir -p /app/sessions && chmod -R 777 /app/sessions

# Render-এর জন্য পোর্ট ৩০০০ ফিক্স করা
ENV WAHA_HTTP_PORT=3000
EXPOSE 3000
