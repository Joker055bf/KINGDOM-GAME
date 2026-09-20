.class public final enum Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView$ClipType;
.super Ljava/lang/Enum;
.source "ClipView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ClipType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView$ClipType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView$ClipType;

.field public static final enum CIRCLE:Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView$ClipType;

.field public static final enum RECTANGLE:Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView$ClipType;


# direct methods
.method private static synthetic $values()[Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView$ClipType;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView$ClipType;

    const/4 v1, 0x0

    .line 174
    sget-object v2, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView$ClipType;->CIRCLE:Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView$ClipType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView$ClipType;->RECTANGLE:Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView$ClipType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 175
    new-instance v0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView$ClipType;

    const-string v1, "CIRCLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView$ClipType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView$ClipType;->CIRCLE:Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView$ClipType;

    new-instance v0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView$ClipType;

    const-string v1, "RECTANGLE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView$ClipType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView$ClipType;->RECTANGLE:Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView$ClipType;

    .line 174
    invoke-static {}, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView$ClipType;->$values()[Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView$ClipType;

    move-result-object v0

    sput-object v0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView$ClipType;->$VALUES:[Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView$ClipType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 174
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView$ClipType;
    .locals 1

    .line 174
    const-class v0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView$ClipType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView$ClipType;

    return-object p0
.end method

.method public static values()[Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView$ClipType;
    .locals 1

    .line 174
    sget-object v0, Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView$ClipType;->$VALUES:[Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView$ClipType;

    invoke-virtual {v0}, [Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView$ClipType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/t4f/tgs/sdkfileserver/profile/view/ClipView$ClipType;

    return-object v0
.end method
