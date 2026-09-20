.class public final enum Lcom/vk/id/auth/Prompt;
.super Ljava/lang/Enum;
.source "Prompt.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vk/id/auth/Prompt;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/vk/id/auth/Prompt;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "BLANK",
        "LOGIN",
        "CONSENT",
        "vkid_release"
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

.field private static final synthetic $VALUES:[Lcom/vk/id/auth/Prompt;

.field public static final enum BLANK:Lcom/vk/id/auth/Prompt;

.field public static final enum CONSENT:Lcom/vk/id/auth/Prompt;

.field public static final enum LOGIN:Lcom/vk/id/auth/Prompt;


# direct methods
.method private static final synthetic $values()[Lcom/vk/id/auth/Prompt;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/vk/id/auth/Prompt;

    const/4 v1, 0x0

    sget-object v2, Lcom/vk/id/auth/Prompt;->BLANK:Lcom/vk/id/auth/Prompt;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/vk/id/auth/Prompt;->LOGIN:Lcom/vk/id/auth/Prompt;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/vk/id/auth/Prompt;->CONSENT:Lcom/vk/id/auth/Prompt;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 15
    new-instance v0, Lcom/vk/id/auth/Prompt;

    const-string v1, "BLANK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/vk/id/auth/Prompt;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vk/id/auth/Prompt;->BLANK:Lcom/vk/id/auth/Prompt;

    .line 22
    new-instance v0, Lcom/vk/id/auth/Prompt;

    const-string v1, "LOGIN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/vk/id/auth/Prompt;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vk/id/auth/Prompt;->LOGIN:Lcom/vk/id/auth/Prompt;

    .line 29
    new-instance v0, Lcom/vk/id/auth/Prompt;

    const-string v1, "CONSENT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/vk/id/auth/Prompt;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vk/id/auth/Prompt;->CONSENT:Lcom/vk/id/auth/Prompt;

    invoke-static {}, Lcom/vk/id/auth/Prompt;->$values()[Lcom/vk/id/auth/Prompt;

    move-result-object v0

    sput-object v0, Lcom/vk/id/auth/Prompt;->$VALUES:[Lcom/vk/id/auth/Prompt;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/vk/id/auth/Prompt;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/vk/id/auth/Prompt;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/vk/id/auth/Prompt;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vk/id/auth/Prompt;
    .locals 1

    const-class v0, Lcom/vk/id/auth/Prompt;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 30
    check-cast p0, Lcom/vk/id/auth/Prompt;

    return-object p0
.end method

.method public static values()[Lcom/vk/id/auth/Prompt;
    .locals 1

    sget-object v0, Lcom/vk/id/auth/Prompt;->$VALUES:[Lcom/vk/id/auth/Prompt;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 30
    check-cast v0, [Lcom/vk/id/auth/Prompt;

    return-object v0
.end method
