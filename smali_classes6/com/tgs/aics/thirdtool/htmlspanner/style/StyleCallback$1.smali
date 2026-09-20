.class synthetic Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleCallback$1;
.super Ljava/lang/Object;
.source "StyleCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$tgs$aics$thirdtool$htmlspanner$style$Style$TextAlignment:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 120
    invoke-static {}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;->values()[Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleCallback$1;->$SwitchMap$com$tgs$aics$thirdtool$htmlspanner$style$Style$TextAlignment:[I

    :try_start_0
    sget-object v1, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;->LEFT:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;

    invoke-virtual {v1}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleCallback$1;->$SwitchMap$com$tgs$aics$thirdtool$htmlspanner$style$Style$TextAlignment:[I

    sget-object v1, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;->CENTER:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;

    invoke-virtual {v1}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/tgs/aics/thirdtool/htmlspanner/style/StyleCallback$1;->$SwitchMap$com$tgs$aics$thirdtool$htmlspanner$style$Style$TextAlignment:[I

    sget-object v1, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;->RIGHT:Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;

    invoke-virtual {v1}, Lcom/tgs/aics/thirdtool/htmlspanner/style/Style$TextAlignment;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
