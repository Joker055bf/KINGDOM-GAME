.class Lcom/mobgame/gui/MobGameImageGaleryActivity$1;
.super Ljava/lang/Object;
.source "MobGameImageGaleryActivity.java"

# interfaces
.implements Lcom/mobgame/gui/MobGameImageGaleryActivity$OnSelectImageGalleryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobgame/gui/MobGameImageGaleryActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobgame/gui/MobGameImageGaleryActivity;


# direct methods
.method constructor <init>(Lcom/mobgame/gui/MobGameImageGaleryActivity;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity$1;->this$0:Lcom/mobgame/gui/MobGameImageGaleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectImageGalleryListener(Landroid/widget/CheckBox;I)V
    .locals 3

    const-string v0, ""

    .line 85
    :try_start_0
    iget-object v1, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity$1;->this$0:Lcom/mobgame/gui/MobGameImageGaleryActivity;

    invoke-static {v1}, Lcom/mobgame/gui/MobGameImageGaleryActivity;->access$008(Lcom/mobgame/gui/MobGameImageGaleryActivity;)I

    .line 86
    iget-object v1, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity$1;->this$0:Lcom/mobgame/gui/MobGameImageGaleryActivity;

    invoke-static {v1}, Lcom/mobgame/gui/MobGameImageGaleryActivity;->access$000(Lcom/mobgame/gui/MobGameImageGaleryActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity$1;->this$0:Lcom/mobgame/gui/MobGameImageGaleryActivity;

    invoke-static {v2}, Lcom/mobgame/gui/MobGameImageGaleryActivity;->access$100(Lcom/mobgame/gui/MobGameImageGaleryActivity;)I

    move-result v2

    if-le v1, v2, :cond_0

    .line 87
    invoke-virtual {p1}, Landroid/widget/CheckBox;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity$1;->this$0:Lcom/mobgame/gui/MobGameImageGaleryActivity;

    sget v2, Lcom/mobgame/R$string;->alert_image_validate:I

    invoke-virtual {v1, v2}, Lcom/mobgame/gui/MobGameImageGaleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/game/sdk/comon/utils/ToastUtils;->showShortToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity$1;->this$0:Lcom/mobgame/gui/MobGameImageGaleryActivity;

    invoke-static {v0}, Lcom/mobgame/gui/MobGameImageGaleryActivity;->access$010(Lcom/mobgame/gui/MobGameImageGaleryActivity;)I

    const/4 v0, 0x0

    .line 89
    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 90
    iget-object p1, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity$1;->this$0:Lcom/mobgame/gui/MobGameImageGaleryActivity;

    invoke-static {p1}, Lcom/mobgame/gui/MobGameImageGaleryActivity;->access$200(Lcom/mobgame/gui/MobGameImageGaleryActivity;)[Z

    move-result-object p1

    aput-boolean v0, p1, p2

    goto :goto_0

    .line 92
    :cond_0
    iget-object p1, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity$1;->this$0:Lcom/mobgame/gui/MobGameImageGaleryActivity;

    invoke-static {p1}, Lcom/mobgame/gui/MobGameImageGaleryActivity;->access$300(Lcom/mobgame/gui/MobGameImageGaleryActivity;)Landroid/widget/TextView;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity$1;->this$0:Lcom/mobgame/gui/MobGameImageGaleryActivity;

    invoke-static {v0}, Lcom/mobgame/gui/MobGameImageGaleryActivity;->access$000(Lcom/mobgame/gui/MobGameImageGaleryActivity;)I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity$1;->this$0:Lcom/mobgame/gui/MobGameImageGaleryActivity;

    invoke-static {v1}, Lcom/mobgame/gui/MobGameImageGaleryActivity;->access$100(Lcom/mobgame/gui/MobGameImageGaleryActivity;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 95
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onUnselectImageGalleryListener(Landroid/widget/CheckBox;I)V
    .locals 2

    const-string p1, ""

    .line 102
    :try_start_0
    iget-object p2, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity$1;->this$0:Lcom/mobgame/gui/MobGameImageGaleryActivity;

    invoke-static {p2}, Lcom/mobgame/gui/MobGameImageGaleryActivity;->access$010(Lcom/mobgame/gui/MobGameImageGaleryActivity;)I

    .line 103
    iget-object p2, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity$1;->this$0:Lcom/mobgame/gui/MobGameImageGaleryActivity;

    invoke-static {p2}, Lcom/mobgame/gui/MobGameImageGaleryActivity;->access$300(Lcom/mobgame/gui/MobGameImageGaleryActivity;)Landroid/widget/TextView;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity$1;->this$0:Lcom/mobgame/gui/MobGameImageGaleryActivity;

    invoke-static {p1}, Lcom/mobgame/gui/MobGameImageGaleryActivity;->access$000(Lcom/mobgame/gui/MobGameImageGaleryActivity;)I

    move-result p1

    add-int/lit8 p1, p1, 0x3

    iget-object v1, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity$1;->this$0:Lcom/mobgame/gui/MobGameImageGaleryActivity;

    invoke-static {v1}, Lcom/mobgame/gui/MobGameImageGaleryActivity;->access$100(Lcom/mobgame/gui/MobGameImageGaleryActivity;)I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 105
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
