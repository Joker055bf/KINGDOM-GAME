.class public final Lcom/tfw/exlog/logcat/ExLogcatUtils;
.super Ljava/lang/Object;
.source "ExLogcatUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tfw/exlog/logcat/ExLogcatUtils$LoggingThreadArgument;
    }
.end annotation


# static fields
.field private static final BLOCK_SIZE:I = 0x80

.field private static final IO_BUFFER_SIZE:I = 0x8000

.field private static final KEY_ITER_COUNT:I = 0x3e8

.field private static final KEY_SIZE:I = 0x100

.field private static final KEY_TOTAL_LENGTH:I = 0x180

.field private static m_IsLogging:Z

.field private static m_LockHelper:Ljava/lang/Object;

.field private static m_LogcatProcess:Ljava/lang/Process;

.field private static m_LoggingThread:Ljava/lang/Thread;

.field private static m_LoggingThreadArgs:Lcom/tfw/exlog/logcat/ExLogcatUtils$LoggingThreadArgument;

.field private static m_LoggingThreadRunnable:Ljava/lang/Runnable;

.field private static m_LoggingThreadRunning:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 55
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/tfw/exlog/logcat/ExLogcatUtils;->m_LockHelper:Ljava/lang/Object;

    .line 57
    new-instance v0, Lcom/tfw/exlog/logcat/ExLogcatUtils$1;

    invoke-direct {v0}, Lcom/tfw/exlog/logcat/ExLogcatUtils$1;-><init>()V

    sput-object v0, Lcom/tfw/exlog/logcat/ExLogcatUtils;->m_LoggingThreadRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/tfw/exlog/logcat/ExLogcatUtils$LoggingThreadArgument;
    .locals 1

    .line 33
    sget-object v0, Lcom/tfw/exlog/logcat/ExLogcatUtils;->m_LoggingThreadArgs:Lcom/tfw/exlog/logcat/ExLogcatUtils$LoggingThreadArgument;

    return-object v0
.end method

.method static synthetic access$002(Lcom/tfw/exlog/logcat/ExLogcatUtils$LoggingThreadArgument;)Lcom/tfw/exlog/logcat/ExLogcatUtils$LoggingThreadArgument;
    .locals 0

    .line 33
    sput-object p0, Lcom/tfw/exlog/logcat/ExLogcatUtils;->m_LoggingThreadArgs:Lcom/tfw/exlog/logcat/ExLogcatUtils$LoggingThreadArgument;

    return-object p0
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 33
    sget-boolean v0, Lcom/tfw/exlog/logcat/ExLogcatUtils;->m_LoggingThreadRunning:Z

    return v0
.end method

.method static synthetic access$200()Ljava/lang/Process;
    .locals 1

    .line 33
    sget-object v0, Lcom/tfw/exlog/logcat/ExLogcatUtils;->m_LogcatProcess:Ljava/lang/Process;

    return-object v0
.end method

.method static synthetic access$300(Ljava/io/File;Z)Ljava/io/FileOutputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 33
    invoke-static {p0, p1}, Lcom/tfw/exlog/logcat/ExLogcatUtils;->createFileOutputStream(Ljava/io/File;Z)Ljava/io/FileOutputStream;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)Ljava/io/Writer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 33
    invoke-static {p0, p1, p2}, Lcom/tfw/exlog/logcat/ExLogcatUtils;->createEncOutputWriter(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)Ljava/io/Writer;

    move-result-object p0

    return-object p0
.end method

.method private static createDecInputReader(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Ljava/io/Reader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const-string v0, "PBKDF2WithHmacSHA1"

    .line 178
    invoke-static {v0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v0

    .line 179
    new-instance v1, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    const/16 v2, 0x3e8

    const/16 v3, 0x180

    invoke-direct {v1, p1, p2, v2, v3}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 180
    invoke-virtual {v0, v1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p1

    .line 181
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    const/16 p2, 0x20

    new-array v0, p2, [B

    const/16 v1, 0x10

    new-array v2, v1, [B

    const/4 v3, 0x0

    .line 184
    invoke-static {p1, v3, v0, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 185
    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 187
    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    const-string p2, "AES"

    invoke-direct {p1, v0, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 188
    new-instance p2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p2, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const-string v0, "AES/CBC/ZeroBytePadding"

    .line 189
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x2

    .line 190
    invoke-virtual {v0, v1, p1, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 192
    new-instance p1, Ljavax/crypto/CipherInputStream;

    invoke-direct {p1, p0, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .line 193
    new-instance p0, Ljava/io/BufferedReader;

    new-instance p2, Ljava/io/InputStreamReader;

    const-string v0, "UTF-8"

    invoke-direct {p2, p1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const p1, 0x8000

    invoke-direct {p0, p2, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    return-object p0
.end method

.method private static createEncOutputWriter(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)Ljava/io/Writer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const-string v0, "PBKDF2WithHmacSHA1"

    .line 155
    invoke-static {v0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v0

    .line 156
    new-instance v1, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    const/16 v2, 0x3e8

    const/16 v3, 0x180

    invoke-direct {v1, p1, p2, v2, v3}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 157
    invoke-virtual {v0, v1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p1

    .line 158
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    const/16 p2, 0x20

    new-array v0, p2, [B

    const/16 v1, 0x10

    new-array v2, v1, [B

    const/4 v3, 0x0

    .line 161
    invoke-static {p1, v3, v0, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    const-string p2, "AES"

    invoke-direct {p1, v0, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 165
    new-instance p2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p2, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const-string v0, "AES/CBC/ZeroBytePadding"

    .line 166
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x1

    .line 167
    invoke-virtual {v0, v1, p1, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 169
    new-instance p1, Ljavax/crypto/CipherOutputStream;

    invoke-direct {p1, p0, v0}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 170
    new-instance p0, Ljava/io/BufferedWriter;

    new-instance p2, Ljava/io/OutputStreamWriter;

    const-string v0, "UTF-8"

    invoke-direct {p2, p1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    const p1, 0x8000

    invoke-direct {p0, p2, p1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    return-object p0
.end method

.method private static createFileOutputStream(Ljava/io/File;Z)Ljava/io/FileOutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 137
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 139
    new-instance p1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 143
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_0

    .line 145
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 149
    :cond_2
    :goto_0
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    return-object p1
.end method

.method public static startLogging(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 210
    sget-object v0, Lcom/tfw/exlog/logcat/ExLogcatUtils;->m_LockHelper:Ljava/lang/Object;

    monitor-enter v0

    .line 211
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/tfw/exlog/logcat/ExLogcatUtils;->startLoggingSynchronized(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 212
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static startLoggingSynchronized(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string p1, "logFilePath = "

    .line 217
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    sget-boolean v2, Lcom/tfw/exlog/logcat/ExLogcatUtils;->m_IsLogging:Z

    if-eqz v2, :cond_0

    const-string v2, "Logging is already active. Stopping previous logging task.\n"

    .line 221
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-static {}, Lcom/tfw/exlog/logcat/ExLogcatUtils;->stopLoggingSynchronized()Ljava/lang/String;

    :cond_0
    const/4 v2, 0x1

    .line 224
    sput-boolean v2, Lcom/tfw/exlog/logcat/ExLogcatUtils;->m_IsLogging:Z

    const-string v3, "ExLog"

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    :try_start_0
    const-string v4, "Starting new logging task.\n"

    .line 231
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v4, "\n"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    const-string p1, "logcat"

    const-string v4, "Command = logcat\n"

    .line 239
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "startLogging: Starting logging task."

    .line 240
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1

    sput-object p1, Lcom/tfw/exlog/logcat/ExLogcatUtils;->m_LogcatProcess:Ljava/lang/Process;

    .line 243
    new-instance p1, Lcom/tfw/exlog/logcat/ExLogcatUtils$LoggingThreadArgument;

    invoke-direct {p1}, Lcom/tfw/exlog/logcat/ExLogcatUtils$LoggingThreadArgument;-><init>()V

    .line 244
    iput-object p0, p1, Lcom/tfw/exlog/logcat/ExLogcatUtils$LoggingThreadArgument;->outputFilePath:Ljava/lang/String;

    .line 245
    iput-object p2, p1, Lcom/tfw/exlog/logcat/ExLogcatUtils$LoggingThreadArgument;->encKey1:Ljava/lang/String;

    .line 246
    iput-object p3, p1, Lcom/tfw/exlog/logcat/ExLogcatUtils$LoggingThreadArgument;->encKey2:Ljava/lang/String;

    const p0, 0x186a0

    .line 247
    iput p0, p1, Lcom/tfw/exlog/logcat/ExLogcatUtils$LoggingThreadArgument;->lineCountMax:I

    .line 248
    sput-object p1, Lcom/tfw/exlog/logcat/ExLogcatUtils;->m_LoggingThreadArgs:Lcom/tfw/exlog/logcat/ExLogcatUtils$LoggingThreadArgument;

    .line 250
    sput-boolean v2, Lcom/tfw/exlog/logcat/ExLogcatUtils;->m_LoggingThreadRunning:Z

    .line 251
    new-instance p0, Ljava/lang/Thread;

    sget-object p1, Lcom/tfw/exlog/logcat/ExLogcatUtils;->m_LoggingThreadRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object p0, Lcom/tfw/exlog/logcat/ExLogcatUtils;->m_LoggingThread:Ljava/lang/Thread;

    .line 252
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 228
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "encKey1 and encKey2 can not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 254
    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    :try_start_1
    const-string p0, "message"

    .line 258
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 262
    :catch_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static stopLogging()Ljava/lang/String;
    .locals 2

    .line 272
    sget-object v0, Lcom/tfw/exlog/logcat/ExLogcatUtils;->m_LockHelper:Ljava/lang/Object;

    monitor-enter v0

    .line 273
    :try_start_0
    invoke-static {}, Lcom/tfw/exlog/logcat/ExLogcatUtils;->stopLoggingSynchronized()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 274
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static stopLoggingSynchronized()Ljava/lang/String;
    .locals 8

    .line 279
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    sget-boolean v2, Lcom/tfw/exlog/logcat/ExLogcatUtils;->m_IsLogging:Z

    if-nez v2, :cond_0

    const-string v2, "stopLogging: logging task is not active. Skipping.\n"

    .line 283
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-string v2, "stopLogging: stopping logging task.\n"

    .line 285
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ExLog"

    const-string v3, "stopLogging: Stopping logging task."

    .line 286
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 288
    sput-boolean v2, Lcom/tfw/exlog/logcat/ExLogcatUtils;->m_IsLogging:Z

    .line 290
    sget-object v3, Lcom/tfw/exlog/logcat/ExLogcatUtils;->m_LogcatProcess:Ljava/lang/Process;

    const/4 v4, 0x0

    .line 291
    sput-object v4, Lcom/tfw/exlog/logcat/ExLogcatUtils;->m_LogcatProcess:Ljava/lang/Process;

    .line 293
    sget-object v5, Lcom/tfw/exlog/logcat/ExLogcatUtils;->m_LoggingThread:Ljava/lang/Thread;

    .line 294
    sput-object v4, Lcom/tfw/exlog/logcat/ExLogcatUtils;->m_LoggingThread:Ljava/lang/Thread;

    const-string v4, "\n"

    const-string v6, "stopLogging: "

    if-eqz v3, :cond_1

    :try_start_0
    const-string v7, "stopLogging: Destroying logcat process.\n"

    .line 298
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 302
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    if-eqz v5, :cond_2

    :try_start_1
    const-string v3, "stopLogging: Destroying logging thread.\n"

    .line 307
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    sput-boolean v2, Lcom/tfw/exlog/logcat/ExLogcatUtils;->m_LoggingThreadRunning:Z

    const-wide/16 v2, 0x3e8

    .line 310
    invoke-virtual {v5, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    .line 313
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    :try_start_2
    const-string v2, "message"

    .line 318
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 322
    :catch_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
