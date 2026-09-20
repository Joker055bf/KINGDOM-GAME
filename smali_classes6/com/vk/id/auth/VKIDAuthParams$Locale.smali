.class public final enum Lcom/vk/id/auth/VKIDAuthParams$Locale;
.super Ljava/lang/Enum;
.source "VKIDAuthParams.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/id/auth/VKIDAuthParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Locale"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/id/auth/VKIDAuthParams$Locale$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vk/id/auth/VKIDAuthParams$Locale;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u000c\u0008\u0086\u0081\u0002\u0018\u0000 \u000c2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000cB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/vk/id/auth/VKIDAuthParams$Locale;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "RUS",
        "UKR",
        "ENG",
        "SPA",
        "GERMAN",
        "POL",
        "FRA",
        "TURKEY",
        "Companion",
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

.field private static final synthetic $VALUES:[Lcom/vk/id/auth/VKIDAuthParams$Locale;

.field public static final Companion:Lcom/vk/id/auth/VKIDAuthParams$Locale$Companion;

.field public static final enum ENG:Lcom/vk/id/auth/VKIDAuthParams$Locale;

.field public static final enum FRA:Lcom/vk/id/auth/VKIDAuthParams$Locale;

.field public static final enum GERMAN:Lcom/vk/id/auth/VKIDAuthParams$Locale;

.field public static final enum POL:Lcom/vk/id/auth/VKIDAuthParams$Locale;

.field public static final enum RUS:Lcom/vk/id/auth/VKIDAuthParams$Locale;

.field public static final enum SPA:Lcom/vk/id/auth/VKIDAuthParams$Locale;

.field public static final enum TURKEY:Lcom/vk/id/auth/VKIDAuthParams$Locale;

.field public static final enum UKR:Lcom/vk/id/auth/VKIDAuthParams$Locale;


# direct methods
.method private static final synthetic $values()[Lcom/vk/id/auth/VKIDAuthParams$Locale;
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/vk/id/auth/VKIDAuthParams$Locale;

    const/4 v1, 0x0

    sget-object v2, Lcom/vk/id/auth/VKIDAuthParams$Locale;->RUS:Lcom/vk/id/auth/VKIDAuthParams$Locale;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/vk/id/auth/VKIDAuthParams$Locale;->UKR:Lcom/vk/id/auth/VKIDAuthParams$Locale;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/vk/id/auth/VKIDAuthParams$Locale;->ENG:Lcom/vk/id/auth/VKIDAuthParams$Locale;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/vk/id/auth/VKIDAuthParams$Locale;->SPA:Lcom/vk/id/auth/VKIDAuthParams$Locale;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/vk/id/auth/VKIDAuthParams$Locale;->GERMAN:Lcom/vk/id/auth/VKIDAuthParams$Locale;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/vk/id/auth/VKIDAuthParams$Locale;->POL:Lcom/vk/id/auth/VKIDAuthParams$Locale;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/vk/id/auth/VKIDAuthParams$Locale;->FRA:Lcom/vk/id/auth/VKIDAuthParams$Locale;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/vk/id/auth/VKIDAuthParams$Locale;->TURKEY:Lcom/vk/id/auth/VKIDAuthParams$Locale;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 90
    new-instance v0, Lcom/vk/id/auth/VKIDAuthParams$Locale;

    const-string v1, "RUS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/vk/id/auth/VKIDAuthParams$Locale;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vk/id/auth/VKIDAuthParams$Locale;->RUS:Lcom/vk/id/auth/VKIDAuthParams$Locale;

    .line 97
    new-instance v0, Lcom/vk/id/auth/VKIDAuthParams$Locale;

    const-string v1, "UKR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/vk/id/auth/VKIDAuthParams$Locale;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vk/id/auth/VKIDAuthParams$Locale;->UKR:Lcom/vk/id/auth/VKIDAuthParams$Locale;

    .line 104
    new-instance v0, Lcom/vk/id/auth/VKIDAuthParams$Locale;

    const-string v1, "ENG"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/vk/id/auth/VKIDAuthParams$Locale;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vk/id/auth/VKIDAuthParams$Locale;->ENG:Lcom/vk/id/auth/VKIDAuthParams$Locale;

    .line 111
    new-instance v0, Lcom/vk/id/auth/VKIDAuthParams$Locale;

    const-string v1, "SPA"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/vk/id/auth/VKIDAuthParams$Locale;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vk/id/auth/VKIDAuthParams$Locale;->SPA:Lcom/vk/id/auth/VKIDAuthParams$Locale;

    .line 118
    new-instance v0, Lcom/vk/id/auth/VKIDAuthParams$Locale;

    const-string v1, "GERMAN"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/vk/id/auth/VKIDAuthParams$Locale;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vk/id/auth/VKIDAuthParams$Locale;->GERMAN:Lcom/vk/id/auth/VKIDAuthParams$Locale;

    .line 125
    new-instance v0, Lcom/vk/id/auth/VKIDAuthParams$Locale;

    const-string v1, "POL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/vk/id/auth/VKIDAuthParams$Locale;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vk/id/auth/VKIDAuthParams$Locale;->POL:Lcom/vk/id/auth/VKIDAuthParams$Locale;

    .line 132
    new-instance v0, Lcom/vk/id/auth/VKIDAuthParams$Locale;

    const-string v1, "FRA"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/vk/id/auth/VKIDAuthParams$Locale;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vk/id/auth/VKIDAuthParams$Locale;->FRA:Lcom/vk/id/auth/VKIDAuthParams$Locale;

    .line 139
    new-instance v0, Lcom/vk/id/auth/VKIDAuthParams$Locale;

    const-string v1, "TURKEY"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/vk/id/auth/VKIDAuthParams$Locale;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vk/id/auth/VKIDAuthParams$Locale;->TURKEY:Lcom/vk/id/auth/VKIDAuthParams$Locale;

    invoke-static {}, Lcom/vk/id/auth/VKIDAuthParams$Locale;->$values()[Lcom/vk/id/auth/VKIDAuthParams$Locale;

    move-result-object v0

    sput-object v0, Lcom/vk/id/auth/VKIDAuthParams$Locale;->$VALUES:[Lcom/vk/id/auth/VKIDAuthParams$Locale;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/vk/id/auth/VKIDAuthParams$Locale;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/vk/id/auth/VKIDAuthParams$Locale$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vk/id/auth/VKIDAuthParams$Locale$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vk/id/auth/VKIDAuthParams$Locale;->Companion:Lcom/vk/id/auth/VKIDAuthParams$Locale$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 84
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/vk/id/auth/VKIDAuthParams$Locale;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/vk/id/auth/VKIDAuthParams$Locale;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vk/id/auth/VKIDAuthParams$Locale;
    .locals 1

    const-class v0, Lcom/vk/id/auth/VKIDAuthParams$Locale;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 173
    check-cast p0, Lcom/vk/id/auth/VKIDAuthParams$Locale;

    return-object p0
.end method

.method public static values()[Lcom/vk/id/auth/VKIDAuthParams$Locale;
    .locals 1

    sget-object v0, Lcom/vk/id/auth/VKIDAuthParams$Locale;->$VALUES:[Lcom/vk/id/auth/VKIDAuthParams$Locale;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 173
    check-cast v0, [Lcom/vk/id/auth/VKIDAuthParams$Locale;

    return-object v0
.end method
