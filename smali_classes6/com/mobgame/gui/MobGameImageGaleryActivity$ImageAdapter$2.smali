.class Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter$2;
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

.field final synthetic val$holder:Lcom/mobgame/gui/MobGameImageGaleryActivity$ViewHolder;


# direct methods
.method constructor <init>(Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter;Lcom/mobgame/gui/MobGameImageGaleryActivity$ViewHolder;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter$2;->this$1:Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter;

    iput-object p2, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter$2;->val$holder:Lcom/mobgame/gui/MobGameImageGaleryActivity$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 228
    iget-object p1, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter$2;->val$holder:Lcom/mobgame/gui/MobGameImageGaleryActivity$ViewHolder;

    iget-object p1, p1, Lcom/mobgame/gui/MobGameImageGaleryActivity$ViewHolder;->chkImage:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->getId()I

    move-result p1

    .line 229
    iget-object v0, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter$2;->this$1:Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter;

    iget-object v0, v0, Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter;->this$0:Lcom/mobgame/gui/MobGameImageGaleryActivity;

    invoke-static {v0}, Lcom/mobgame/gui/MobGameImageGaleryActivity;->access$200(Lcom/mobgame/gui/MobGameImageGaleryActivity;)[Z

    move-result-object v0

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter$2;->val$holder:Lcom/mobgame/gui/MobGameImageGaleryActivity$ViewHolder;

    iget-object v0, v0, Lcom/mobgame/gui/MobGameImageGaleryActivity$ViewHolder;->chkImage:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 231
    iget-object v0, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter$2;->this$1:Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter;

    iget-object v0, v0, Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter;->this$0:Lcom/mobgame/gui/MobGameImageGaleryActivity;

    invoke-static {v0}, Lcom/mobgame/gui/MobGameImageGaleryActivity;->access$200(Lcom/mobgame/gui/MobGameImageGaleryActivity;)[Z

    move-result-object v0

    aput-boolean v1, v0, p1

    .line 232
    iget-object v0, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter$2;->this$1:Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter;

    invoke-static {v0}, Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter;->access$600(Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter;)Lcom/mobgame/gui/MobGameImageGaleryActivity$OnSelectImageGalleryListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter$2;->this$1:Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter;

    invoke-static {v0}, Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter;->access$600(Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter;)Lcom/mobgame/gui/MobGameImageGaleryActivity$OnSelectImageGalleryListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter$2;->val$holder:Lcom/mobgame/gui/MobGameImageGaleryActivity$ViewHolder;

    iget-object v1, v1, Lcom/mobgame/gui/MobGameImageGaleryActivity$ViewHolder;->chkImage:Landroid/widget/CheckBox;

    invoke-interface {v0, v1, p1}, Lcom/mobgame/gui/MobGameImageGaleryActivity$OnSelectImageGalleryListener;->onUnselectImageGalleryListener(Landroid/widget/CheckBox;I)V

    goto :goto_0

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter$2;->val$holder:Lcom/mobgame/gui/MobGameImageGaleryActivity$ViewHolder;

    iget-object v0, v0, Lcom/mobgame/gui/MobGameImageGaleryActivity$ViewHolder;->chkImage:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 237
    iget-object v0, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter$2;->this$1:Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter;

    iget-object v0, v0, Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter;->this$0:Lcom/mobgame/gui/MobGameImageGaleryActivity;

    invoke-static {v0}, Lcom/mobgame/gui/MobGameImageGaleryActivity;->access$200(Lcom/mobgame/gui/MobGameImageGaleryActivity;)[Z

    move-result-object v0

    aput-boolean v1, v0, p1

    .line 238
    iget-object v0, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter$2;->this$1:Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter;

    invoke-static {v0}, Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter;->access$600(Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter;)Lcom/mobgame/gui/MobGameImageGaleryActivity$OnSelectImageGalleryListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter$2;->this$1:Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter;

    invoke-static {v0}, Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter;->access$600(Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter;)Lcom/mobgame/gui/MobGameImageGaleryActivity$OnSelectImageGalleryListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mobgame/gui/MobGameImageGaleryActivity$ImageAdapter$2;->val$holder:Lcom/mobgame/gui/MobGameImageGaleryActivity$ViewHolder;

    iget-object v1, v1, Lcom/mobgame/gui/MobGameImageGaleryActivity$ViewHolder;->chkImage:Landroid/widget/CheckBox;

    invoke-interface {v0, v1, p1}, Lcom/mobgame/gui/MobGameImageGaleryActivity$OnSelectImageGalleryListener;->onSelectImageGalleryListener(Landroid/widget/CheckBox;I)V

    :cond_1
    :goto_0
    return-void
.end method
