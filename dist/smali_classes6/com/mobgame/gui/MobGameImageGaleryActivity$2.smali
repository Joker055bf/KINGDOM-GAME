.class Lcom/mobgame/gui/MobGameImageGaleryActivity$2;
.super Ljava/lang/Object;
.source "MobGameImageGaleryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 113
    iput-object p1, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity$2;->this$0:Lcom/mobgame/gui/MobGameImageGaleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 117
    :try_start_0
    iget-object p1, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity$2;->this$0:Lcom/mobgame/gui/MobGameImageGaleryActivity;

    invoke-static {p1}, Lcom/mobgame/gui/MobGameImageGaleryActivity;->access$200(Lcom/mobgame/gui/MobGameImageGaleryActivity;)[Z

    move-result-object p1

    array-length p1, p1

    const-string v0, ""

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, p1, :cond_1

    .line 121
    iget-object v3, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity$2;->this$0:Lcom/mobgame/gui/MobGameImageGaleryActivity;

    invoke-static {v3}, Lcom/mobgame/gui/MobGameImageGaleryActivity;->access$200(Lcom/mobgame/gui/MobGameImageGaleryActivity;)[Z

    move-result-object v3

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 123
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity$2;->this$0:Lcom/mobgame/gui/MobGameImageGaleryActivity;

    invoke-static {v3}, Lcom/mobgame/gui/MobGameImageGaleryActivity;->access$400(Lcom/mobgame/gui/MobGameImageGaleryActivity;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    .line 127
    iget-object p1, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity$2;->this$0:Lcom/mobgame/gui/MobGameImageGaleryActivity;

    const-string v0, "Please select at least one image"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_2
    const-string p1, "SelectedImages"

    .line 130
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v1, "data"

    .line 132
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    iget-object v0, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity$2;->this$0:Lcom/mobgame/gui/MobGameImageGaleryActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Lcom/mobgame/gui/MobGameImageGaleryActivity;->setResult(ILandroid/content/Intent;)V

    .line 134
    iget-object p1, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity$2;->this$0:Lcom/mobgame/gui/MobGameImageGaleryActivity;

    invoke-virtual {p1}, Lcom/mobgame/gui/MobGameImageGaleryActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 137
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
