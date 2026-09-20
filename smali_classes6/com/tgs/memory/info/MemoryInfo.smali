.class public Lcom/tgs/memory/info/MemoryInfo;
.super Ljava/lang/Object;
.source "MemoryInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMemoryInfo(Landroid/content/Context;)Lcom/tgs/memory/info/MemoryData;
    .locals 8

    const-string v0, "activity"

    .line 9
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 10
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 11
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 13
    iget-wide v2, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    .line 14
    iget-wide v4, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    sub-long v6, v2, v4

    .line 17
    new-instance p0, Lcom/tgs/memory/info/MemoryData;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/tgs/memory/info/MemoryData;-><init>(JJJ)V

    return-object p0
.end method
