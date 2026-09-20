.class public Lcom/google/firebase/database/core/utilities/PushIdGenerator;
.super Ljava/lang/Object;
.source "PushIdGenerator.java"


# static fields
.field private static final PUSH_CHARS:Ljava/lang/String; = "-0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_abcdefghijklmnopqrstuvwxyz"

.field private static lastPushTime:J

.field private static final lastRandChars:[I

.field private static final randGen:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/google/firebase/database/core/utilities/PushIdGenerator;->randGen:Ljava/util/Random;

    const-wide/16 v0, 0x0

    .line 28
    sput-wide v0, Lcom/google/firebase/database/core/utilities/PushIdGenerator;->lastPushTime:J

    const/16 v0, 0xc

    new-array v0, v0, [I

    .line 30
    sput-object v0, Lcom/google/firebase/database/core/utilities/PushIdGenerator;->lastRandChars:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized generatePushChildName(J)Ljava/lang/String;
    .locals 13

    const-class v0, Lcom/google/firebase/database/core/utilities/PushIdGenerator;

    monitor-enter v0

    .line 33
    :try_start_0
    sget-wide v1, Lcom/google/firebase/database/core/utilities/PushIdGenerator;->lastPushTime:J

    cmp-long v1, p0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 34
    :goto_0
    sput-wide p0, Lcom/google/firebase/database/core/utilities/PushIdGenerator;->lastPushTime:J

    const/16 v4, 0x8

    new-array v4, v4, [C

    .line 37
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x14

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v7, 0x7

    :goto_1
    if-ltz v7, :cond_1

    const-string v8, "-0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_abcdefghijklmnopqrstuvwxyz"

    const-wide/16 v9, 0x40

    .line 39
    rem-long v11, p0, v9

    long-to-int v11, v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aput-char v8, v4, v7

    .line 40
    div-long/2addr p0, v9

    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    :cond_1
    const-wide/16 v7, 0x0

    cmp-long p0, p0, v7

    if-nez p0, :cond_2

    move p0, v2

    goto :goto_2

    :cond_2
    move p0, v3

    .line 42
    :goto_2
    invoke-static {p0}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(Z)V

    .line 44
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    const/16 p0, 0xc

    if-nez v1, :cond_3

    move p1, v3

    :goto_3
    if-ge p1, p0, :cond_4

    .line 48
    sget-object v1, Lcom/google/firebase/database/core/utilities/PushIdGenerator;->lastRandChars:[I

    sget-object v4, Lcom/google/firebase/database/core/utilities/PushIdGenerator;->randGen:Ljava/util/Random;

    const/16 v7, 0x40

    invoke-virtual {v4, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    aput v4, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 51
    :cond_3
    invoke-static {}, Lcom/google/firebase/database/core/utilities/PushIdGenerator;->incrementArray()V

    :cond_4
    move p1, v3

    :goto_4
    if-ge p1, p0, :cond_5

    const-string v1, "-0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_abcdefghijklmnopqrstuvwxyz"

    .line 54
    sget-object v4, Lcom/google/firebase/database/core/utilities/PushIdGenerator;->lastRandChars:[I

    aget v4, v4, p1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 56
    :cond_5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-ne p0, v6, :cond_6

    goto :goto_5

    :cond_6
    move v2, v3

    :goto_5
    invoke-static {v2}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(Z)V

    .line 57
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static incrementArray()V
    .locals 4

    const/16 v0, 0xb

    :goto_0
    if-ltz v0, :cond_1

    .line 62
    sget-object v1, Lcom/google/firebase/database/core/utilities/PushIdGenerator;->lastRandChars:[I

    aget v2, v1, v0

    const/16 v3, 0x3f

    if-eq v2, v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 63
    aput v2, v1, v0

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 66
    aput v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method
