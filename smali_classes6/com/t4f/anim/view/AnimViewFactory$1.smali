.class synthetic Lcom/t4f/anim/view/AnimViewFactory$1;
.super Ljava/lang/Object;
.source "AnimViewFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/t4f/anim/view/AnimViewFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$t4f$anim$view$IAnimView$MediaType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 26
    invoke-static {}, Lcom/t4f/anim/view/IAnimView$MediaType;->values()[Lcom/t4f/anim/view/IAnimView$MediaType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/t4f/anim/view/AnimViewFactory$1;->$SwitchMap$com$t4f$anim$view$IAnimView$MediaType:[I

    :try_start_0
    sget-object v1, Lcom/t4f/anim/view/IAnimView$MediaType;->GIF:Lcom/t4f/anim/view/IAnimView$MediaType;

    invoke-virtual {v1}, Lcom/t4f/anim/view/IAnimView$MediaType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/t4f/anim/view/AnimViewFactory$1;->$SwitchMap$com$t4f$anim$view$IAnimView$MediaType:[I

    sget-object v1, Lcom/t4f/anim/view/IAnimView$MediaType;->VIDEO:Lcom/t4f/anim/view/IAnimView$MediaType;

    invoke-virtual {v1}, Lcom/t4f/anim/view/IAnimView$MediaType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
