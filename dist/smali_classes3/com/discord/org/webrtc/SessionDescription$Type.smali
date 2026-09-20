.class public final enum Lcom/discord/org/webrtc/SessionDescription$Type;
.super Ljava/lang/Enum;
.source "SessionDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/discord/org/webrtc/SessionDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/discord/org/webrtc/SessionDescription$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/discord/org/webrtc/SessionDescription$Type;

.field public static final enum ANSWER:Lcom/discord/org/webrtc/SessionDescription$Type;

.field public static final enum OFFER:Lcom/discord/org/webrtc/SessionDescription$Type;

.field public static final enum PRANSWER:Lcom/discord/org/webrtc/SessionDescription$Type;

.field public static final enum ROLLBACK:Lcom/discord/org/webrtc/SessionDescription$Type;


# direct methods
.method private static synthetic $values()[Lcom/discord/org/webrtc/SessionDescription$Type;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/discord/org/webrtc/SessionDescription$Type;

    const/4 v1, 0x0

    .line 22
    sget-object v2, Lcom/discord/org/webrtc/SessionDescription$Type;->OFFER:Lcom/discord/org/webrtc/SessionDescription$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/discord/org/webrtc/SessionDescription$Type;->PRANSWER:Lcom/discord/org/webrtc/SessionDescription$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/discord/org/webrtc/SessionDescription$Type;->ANSWER:Lcom/discord/org/webrtc/SessionDescription$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/discord/org/webrtc/SessionDescription$Type;->ROLLBACK:Lcom/discord/org/webrtc/SessionDescription$Type;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 23
    new-instance v0, Lcom/discord/org/webrtc/SessionDescription$Type;

    const-string v1, "OFFER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/discord/org/webrtc/SessionDescription$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discord/org/webrtc/SessionDescription$Type;->OFFER:Lcom/discord/org/webrtc/SessionDescription$Type;

    .line 24
    new-instance v0, Lcom/discord/org/webrtc/SessionDescription$Type;

    const-string v1, "PRANSWER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/discord/org/webrtc/SessionDescription$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discord/org/webrtc/SessionDescription$Type;->PRANSWER:Lcom/discord/org/webrtc/SessionDescription$Type;

    .line 25
    new-instance v0, Lcom/discord/org/webrtc/SessionDescription$Type;

    const-string v1, "ANSWER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/discord/org/webrtc/SessionDescription$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discord/org/webrtc/SessionDescription$Type;->ANSWER:Lcom/discord/org/webrtc/SessionDescription$Type;

    .line 26
    new-instance v0, Lcom/discord/org/webrtc/SessionDescription$Type;

    const-string v1, "ROLLBACK"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/discord/org/webrtc/SessionDescription$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discord/org/webrtc/SessionDescription$Type;->ROLLBACK:Lcom/discord/org/webrtc/SessionDescription$Type;

    .line 22
    invoke-static {}, Lcom/discord/org/webrtc/SessionDescription$Type;->$values()[Lcom/discord/org/webrtc/SessionDescription$Type;

    move-result-object v0

    sput-object v0, Lcom/discord/org/webrtc/SessionDescription$Type;->$VALUES:[Lcom/discord/org/webrtc/SessionDescription$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromCanonicalForm(Ljava/lang/String;)Lcom/discord/org/webrtc/SessionDescription$Type;
    .locals 1

    .line 34
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-class v0, Lcom/discord/org/webrtc/SessionDescription$Type;

    invoke-static {v0, p0}, Lcom/discord/org/webrtc/SessionDescription$Type;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/discord/org/webrtc/SessionDescription$Type;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/discord/org/webrtc/SessionDescription$Type;
    .locals 1

    .line 22
    const-class v0, Lcom/discord/org/webrtc/SessionDescription$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/discord/org/webrtc/SessionDescription$Type;

    return-object p0
.end method

.method public static values()[Lcom/discord/org/webrtc/SessionDescription$Type;
    .locals 1

    .line 22
    sget-object v0, Lcom/discord/org/webrtc/SessionDescription$Type;->$VALUES:[Lcom/discord/org/webrtc/SessionDescription$Type;

    invoke-virtual {v0}, [Lcom/discord/org/webrtc/SessionDescription$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/discord/org/webrtc/SessionDescription$Type;

    return-object v0
.end method


# virtual methods
.method public canonicalForm()Ljava/lang/String;
    .locals 2

    .line 29
    invoke-virtual {p0}, Lcom/discord/org/webrtc/SessionDescription$Type;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
