.class Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter$1;
.super Ljava/lang/Object;
.source "MobGameImageGaleryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter;


# direct methods
.method constructor <init>(Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter$1;->this$1:Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 208
    check-cast p1, Landroid/widget/CheckBox;

    .line 209
    invoke-virtual {p1}, Landroid/widget/CheckBox;->getId()I

    move-result v0

    .line 210
    iget-object v1, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter$1;->this$1:Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter;

    iget-object v1, v1, Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter;->this$0:Lcom/mobgame/gui/MobGameImageGaleryActivity;

    invoke-static {v1}, Lcom/mobgame/gui/MobGameImageGaleryActivity;->access$200(Lcom/mobgame/gui/MobGameImageGaleryActivity;)[Z

    move-result-object v1

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 211
    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 212
    iget-object v2, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter$1;->this$1:Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter;

    iget-object v2, v2, Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter;->this$0:Lcom/mobgame/gui/MobGameImageGaleryActivity;

    invoke-static {v2}, Lcom/mobgame/gui/MobGameImageGaleryActivity;->access$200(Lcom/mobgame/gui/MobGameImageGaleryActivity;)[Z

    move-result-object v2

    aput-boolean v1, v2, v0

    .line 213
    iget-object v1, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter$1;->this$1:Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter;

    invoke-static {v1}, Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter;->access$600(Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter;)Lcom/mobgame/gui/MobGameImageGaleryActivity$OnSelectImageGalleryListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 214
    iget-object v1, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter$1;->this$1:Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter;

    invoke-static {v1}, Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter;->access$600(Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter;)Lcom/mobgame/gui/MobGameImageGaleryActivity$OnSelectImageGalleryListener;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/mobgame/gui/MobGameImageGaleryActivity$OnSelectImageGalleryListener;->onUnselectImageGalleryListener(Landroid/widget/CheckBox;I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 217
    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 218
    iget-object v2, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter$1;->this$1:Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter;

    iget-object v2, v2, Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter;->this$0:Lcom/mobgame/gui/MobGameImageGaleryActivity;

    invoke-static {v2}, Lcom/mobgame/gui/MobGameImageGaleryActivity;->access$200(Lcom/mobgame/gui/MobGameImageGaleryActivity;)[Z

    move-result-object v2

    aput-boolean v1, v2, v0

    .line 219
    iget-object v1, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter$1;->this$1:Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter;

    invoke-static {v1}, Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter;->access$600(Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter;)Lcom/mobgame/gui/MobGameImageGaleryActivity$OnSelectImageGalleryListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 220
    iget-object v1, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter$1;->this$1:Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter;

    invoke-static {v1}, Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter;->access$600(Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter;)Lcom/mobgame/gui/MobGameImageGaleryActivity$OnSelectImageGalleryListener;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/mobgame/gui/MobGameImageGaleryActivity$OnSelectImageGalleryListener;->onSelectImageGalleryListener(Landroid/widget/CheckBox;I)V

    :cond_1
    :goto_0
    return-void
.end method
