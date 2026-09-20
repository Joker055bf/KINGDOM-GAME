.class public final enum Lcom/t4f/anim/view/IAnimView$MediaType;
.super Ljava/lang/Enum;
.source "IAnimView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/t4f/anim/view/IAnimView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MediaType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/t4f/anim/view/IAnimView$MediaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/t4f/anim/view/IAnimView$MediaType;

.field public static final enum GIF:Lcom/t4f/anim/view/IAnimView$MediaType;

.field public static final enum VIDEO:Lcom/t4f/anim/view/IAnimView$MediaType;


# direct methods
.method private static synthetic $values()[Lcom/t4f/anim/view/IAnimView$MediaType;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/t4f/anim/view/IAnimView$MediaType;

    const/4 v1, 0x0

    .line 16
    sget-object v2, Lcom/t4f/anim/view/IAnimView$MediaType;->GIF:Lcom/t4f/anim/view/IAnimView$MediaType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/t4f/anim/view/IAnimView$MediaType;->VIDEO:Lcom/t4f/anim/view/IAnimView$MediaType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 17
    new-instance v0, Lcom/t4f/anim/view/IAnimView$MediaType;

    const-string v1, "GIF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/t4f/anim/view/IAnimView$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/t4f/anim/view/IAnimView$MediaType;->GIF:Lcom/t4f/anim/view/IAnimView$MediaType;

    .line 18
    new-instance v0, Lcom/t4f/anim/view/IAnimView$MediaType;

    const-string v1, "VIDEO"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/t4f/anim/view/IAnimView$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/t4f/anim/view/IAnimView$MediaType;->VIDEO:Lcom/t4f/anim/view/IAnimView$MediaType;

    .line 16
    invoke-static {}, Lcom/t4f/anim/view/IAnimView$MediaType;->$values()[Lcom/t4f/anim/view/IAnimView$MediaType;

    move-result-object v0

    sput-object v0, Lcom/t4f/anim/view/IAnimView$MediaType;->$VALUES:[Lcom/t4f/anim/view/IAnimView$MediaType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/t4f/anim/view/IAnimView$MediaType;
    .locals 1

    .line 16
    const-class v0, Lcom/t4f/anim/view/IAnimView$MediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/t4f/anim/view/IAnimView$MediaType;

    return-object p0
.end method

.method public static values()[Lcom/t4f/anim/view/IAnimView$MediaType;
    .locals 1

    .line 16
    sget-object v0, Lcom/t4f/anim/view/IAnimView$MediaType;->$VALUES:[Lcom/t4f/anim/view/IAnimView$MediaType;

    invoke-virtual {v0}, [Lcom/t4f/anim/view/IAnimView$MediaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/t4f/anim/view/IAnimView$MediaType;

    return-object v0
.end method
