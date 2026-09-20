.class public final enum Lcom/vk/id/logger/LogEngine$LogLevel;
.super Ljava/lang/Enum;
.source "LogEngine.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/id/logger/LogEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LogLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vk/id/logger/LogEngine$LogLevel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/vk/id/logger/LogEngine$LogLevel;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "INFO",
        "DEBUG",
        "ERROR",
        "logger_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/vk/id/logger/LogEngine$LogLevel;

.field public static final enum DEBUG:Lcom/vk/id/logger/LogEngine$LogLevel;

.field public static final enum ERROR:Lcom/vk/id/logger/LogEngine$LogLevel;

.field public static final enum INFO:Lcom/vk/id/logger/LogEngine$LogLevel;


# direct methods
.method private static final synthetic $values()[Lcom/vk/id/logger/LogEngine$LogLevel;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/vk/id/logger/LogEngine$LogLevel;

    const/4 v1, 0x0

    sget-object v2, Lcom/vk/id/logger/LogEngine$LogLevel;->INFO:Lcom/vk/id/logger/LogEngine$LogLevel;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/vk/id/logger/LogEngine$LogLevel;->DEBUG:Lcom/vk/id/logger/LogEngine$LogLevel;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/vk/id/logger/LogEngine$LogLevel;->ERROR:Lcom/vk/id/logger/LogEngine$LogLevel;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 25
    new-instance v0, Lcom/vk/id/logger/LogEngine$LogLevel;

    const-string v1, "INFO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/vk/id/logger/LogEngine$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vk/id/logger/LogEngine$LogLevel;->INFO:Lcom/vk/id/logger/LogEngine$LogLevel;

    .line 32
    new-instance v0, Lcom/vk/id/logger/LogEngine$LogLevel;

    const-string v1, "DEBUG"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/vk/id/logger/LogEngine$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vk/id/logger/LogEngine$LogLevel;->DEBUG:Lcom/vk/id/logger/LogEngine$LogLevel;

    .line 39
    new-instance v0, Lcom/vk/id/logger/LogEngine$LogLevel;

    const-string v1, "ERROR"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/vk/id/logger/LogEngine$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vk/id/logger/LogEngine$LogLevel;->ERROR:Lcom/vk/id/logger/LogEngine$LogLevel;

    invoke-static {}, Lcom/vk/id/logger/LogEngine$LogLevel;->$values()[Lcom/vk/id/logger/LogEngine$LogLevel;

    move-result-object v0

    sput-object v0, Lcom/vk/id/logger/LogEngine$LogLevel;->$VALUES:[Lcom/vk/id/logger/LogEngine$LogLevel;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/vk/id/logger/LogEngine$LogLevel;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/vk/id/logger/LogEngine$LogLevel;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/vk/id/logger/LogEngine$LogLevel;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vk/id/logger/LogEngine$LogLevel;
    .locals 1

    const-class v0, Lcom/vk/id/logger/LogEngine$LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 40
    check-cast p0, Lcom/vk/id/logger/LogEngine$LogLevel;

    return-object p0
.end method

.method public static values()[Lcom/vk/id/logger/LogEngine$LogLevel;
    .locals 1

    sget-object v0, Lcom/vk/id/logger/LogEngine$LogLevel;->$VALUES:[Lcom/vk/id/logger/LogEngine$LogLevel;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 40
    check-cast v0, [Lcom/vk/id/logger/LogEngine$LogLevel;

    return-object v0
.end method
