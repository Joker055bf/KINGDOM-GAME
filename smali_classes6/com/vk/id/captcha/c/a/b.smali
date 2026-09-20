.class public final enum Lcom/vk/id/captcha/c/a/b;
.super Ljava/lang/Enum;
.source "Sensors.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vk/id/captcha/c/a/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/vk/id/captcha/c/a/b;

.field public static final enum b:Lcom/vk/id/captcha/c/a/b;

.field public static final enum c:Lcom/vk/id/captcha/c/a/b;

.field private static final synthetic d:[Lcom/vk/id/captcha/c/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 7
    new-instance v0, Lcom/vk/id/captcha/c/a/b;

    const-string v1, "ACCELEROMETER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/vk/id/captcha/c/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vk/id/captcha/c/a/b;->a:Lcom/vk/id/captcha/c/a/b;

    .line 8
    new-instance v1, Lcom/vk/id/captcha/c/a/b;

    const-string v3, "GYROSCOPE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/vk/id/captcha/c/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/vk/id/captcha/c/a/b;->b:Lcom/vk/id/captcha/c/a/b;

    .line 9
    new-instance v3, Lcom/vk/id/captcha/c/a/b;

    const-string v5, "MOTION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/vk/id/captcha/c/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/vk/id/captcha/c/a/b;->c:Lcom/vk/id/captcha/c/a/b;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/vk/id/captcha/c/a/b;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 999
    sput-object v5, Lcom/vk/id/captcha/c/a/b;->d:[Lcom/vk/id/captcha/c/a/b;

    check-cast v5, [Ljava/lang/Enum;

    invoke-static {v5}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()[Lcom/vk/id/captcha/c/a/b;
    .locals 1

    sget-object v0, Lcom/vk/id/captcha/c/a/b;->d:[Lcom/vk/id/captcha/c/a/b;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vk/id/captcha/c/a/b;

    return-object v0
.end method
