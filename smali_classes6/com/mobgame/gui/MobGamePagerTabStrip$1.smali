.class Lcom/mobgame/gui/MobGamePagerTabStrip$1;
.super Ljava/lang/Object;
.source "MobGamePagerTabStrip.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobgame/gui/MobGamePagerTabStrip;->notifyDataSetChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobgame/gui/MobGamePagerTabStrip;


# direct methods
.method constructor <init>(Lcom/mobgame/gui/MobGamePagerTabStrip;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/mobgame/gui/MobGamePagerTabStrip$1;->this$0:Lcom/mobgame/gui/MobGamePagerTabStrip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 205
    iget-object v0, p0, Lcom/mobgame/gui/MobGamePagerTabStrip$1;->this$0:Lcom/mobgame/gui/MobGamePagerTabStrip;

    invoke-virtual {v0}, Lcom/mobgame/gui/MobGamePagerTabStrip;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 206
    iget-object v0, p0, Lcom/mobgame/gui/MobGamePagerTabStrip$1;->this$0:Lcom/mobgame/gui/MobGamePagerTabStrip;

    invoke-static {v0}, Lcom/mobgame/gui/MobGamePagerTabStrip;->access$200(Lcom/mobgame/gui/MobGamePagerTabStrip;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-static {v0, v1}, Lcom/mobgame/gui/MobGamePagerTabStrip;->access$102(Lcom/mobgame/gui/MobGamePagerTabStrip;I)I

    .line 207
    iget-object v0, p0, Lcom/mobgame/gui/MobGamePagerTabStrip$1;->this$0:Lcom/mobgame/gui/MobGamePagerTabStrip;

    invoke-static {v0}, Lcom/mobgame/gui/MobGamePagerTabStrip;->access$100(Lcom/mobgame/gui/MobGamePagerTabStrip;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/mobgame/gui/MobGamePagerTabStrip;->access$300(Lcom/mobgame/gui/MobGamePagerTabStrip;II)V

    return-void
.end method
