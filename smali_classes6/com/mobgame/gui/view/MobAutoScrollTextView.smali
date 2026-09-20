.class public Lcom/mobgame/gui/view/MobAutoScrollTextView;
.super Landroid/widget/TextSwitcher;
.source "MobAutoScrollTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobgame/gui/view/MobAutoScrollTextView$OnTextViewScrollListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.mobgame.gui.view.MobAutoScrollTextView"


# instance fields
.field private duration:Ljava/lang/Long;

.field private i:I

.field private repeat:Z

.field private reverse:Z

.field private stringArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Landroid/widget/TextSwitcher;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 34
    iput-boolean p1, p0, Lcom/mobgame/gui/view/MobAutoScrollTextView;->reverse:Z

    const/4 p1, 0x0

    .line 35
    iput p1, p0, Lcom/mobgame/gui/view/MobAutoScrollTextView;->i:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/TextSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 34
    iput-boolean p1, p0, Lcom/mobgame/gui/view/MobAutoScrollTextView;->reverse:Z

    const/4 p1, 0x0

    .line 35
    iput p1, p0, Lcom/mobgame/gui/view/MobAutoScrollTextView;->i:I

    return-void
.end method

.method static synthetic access$000(Lcom/mobgame/gui/view/MobAutoScrollTextView;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/mobgame/gui/view/MobAutoScrollTextView;->i:I

    return p0
.end method

.method static synthetic access$002(Lcom/mobgame/gui/view/MobAutoScrollTextView;I)I
    .locals 0

    .line 24
    iput p1, p0, Lcom/mobgame/gui/view/MobAutoScrollTextView;->i:I

    return p1
.end method

.method static synthetic access$008(Lcom/mobgame/gui/view/MobAutoScrollTextView;)I
    .locals 2

    .line 24
    iget v0, p0, Lcom/mobgame/gui/view/MobAutoScrollTextView;->i:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/mobgame/gui/view/MobAutoScrollTextView;->i:I

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lcom/mobgame/gui/view/MobAutoScrollTextView;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getArrayListText()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/mobgame/gui/view/MobAutoScrollTextView;->stringArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDuration()Ljava/lang/Long;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/mobgame/gui/view/MobAutoScrollTextView;->duration:Ljava/lang/Long;

    return-object v0
.end method

.method public isRepeat()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lcom/mobgame/gui/view/MobAutoScrollTextView;->repeat:Z

    return v0
.end method

.method public isReverse()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Lcom/mobgame/gui/view/MobAutoScrollTextView;->reverse:Z

    return v0
.end method

.method public setArrayListText(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lcom/mobgame/gui/view/MobAutoScrollTextView;->stringArrayList:Ljava/util/ArrayList;

    return-void
.end method

.method public setDuration(Ljava/lang/Long;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/mobgame/gui/view/MobAutoScrollTextView;->duration:Ljava/lang/Long;

    return-void
.end method

.method public setRepeat(Z)V
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/mobgame/gui/view/MobAutoScrollTextView;->repeat:Z

    return-void
.end method

.method public setReverse(Z)V
    .locals 0

    .line 86
    iput-boolean p1, p0, Lcom/mobgame/gui/view/MobAutoScrollTextView;->reverse:Z

    return-void
.end method

.method public startAutoScroll(Ljava/util/ArrayList;JLcom/mobgame/gui/view/MobAutoScrollTextView$OnTextViewScrollListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;J",
            "Lcom/mobgame/gui/view/MobAutoScrollTextView$OnTextViewScrollListener;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v6, p4

    .line 153
    invoke-virtual/range {v0 .. v6}, Lcom/mobgame/gui/view/MobAutoScrollTextView;->startAutoScroll(Ljava/util/ArrayList;JZZLcom/mobgame/gui/view/MobAutoScrollTextView$OnTextViewScrollListener;)V

    return-void
.end method

.method public startAutoScroll(Ljava/util/ArrayList;JZLcom/mobgame/gui/view/MobAutoScrollTextView$OnTextViewScrollListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;JZ",
            "Lcom/mobgame/gui/view/MobAutoScrollTextView$OnTextViewScrollListener;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v6, p5

    .line 147
    invoke-virtual/range {v0 .. v6}, Lcom/mobgame/gui/view/MobAutoScrollTextView;->startAutoScroll(Ljava/util/ArrayList;JZZLcom/mobgame/gui/view/MobAutoScrollTextView$OnTextViewScrollListener;)V

    return-void
.end method

.method public declared-synchronized startAutoScroll(Ljava/util/ArrayList;JZZLcom/mobgame/gui/view/MobAutoScrollTextView$OnTextViewScrollListener;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;JZZ",
            "Lcom/mobgame/gui/view/MobAutoScrollTextView$OnTextViewScrollListener;",
            ")V"
        }
    .end annotation

    move-object v10, p0

    const-string v0, "startAutoScroll: Switcher childcount: "

    monitor-enter p0

    .line 95
    :try_start_0
    sget-object v1, Lcom/mobgame/gui/view/MobAutoScrollTextView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mobgame/gui/view/MobAutoScrollTextView;->getChildCount()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {p0}, Lcom/mobgame/gui/view/MobAutoScrollTextView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lcom/mobgame/gui/view/MobAutoScrollTextView$1;

    invoke-direct {v0, p0}, Lcom/mobgame/gui/view/MobAutoScrollTextView$1;-><init>(Lcom/mobgame/gui/view/MobAutoScrollTextView;)V

    invoke-virtual {p0, v0}, Lcom/mobgame/gui/view/MobAutoScrollTextView;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/mobgame/gui/view/MobAutoScrollTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/mobgame/R$anim;->push_up_in:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mobgame/gui/view/MobAutoScrollTextView;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 113
    invoke-virtual {p0}, Lcom/mobgame/gui/view/MobAutoScrollTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/mobgame/R$anim;->push_up_out:I

    invoke-virtual {p0, v0, v1}, Lcom/mobgame/gui/view/MobAutoScrollTextView;->setOutAnimation(Landroid/content/Context;I)V

    .line 116
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    mul-long v3, v0, p2

    const/4 v0, 0x0

    .line 117
    iput v0, v10, Lcom/mobgame/gui/view/MobAutoScrollTextView;->i:I

    const-string v0, ""

    .line 118
    invoke-virtual {p0, v0}, Lcom/mobgame/gui/view/MobAutoScrollTextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    new-instance v0, Lcom/mobgame/gui/view/MobAutoScrollTextView$2;

    move-object v1, v0

    move-object v2, p0

    move-wide v5, p2

    move-object/from16 v7, p6

    move-object v8, p1

    move/from16 v9, p5

    invoke-direct/range {v1 .. v9}, Lcom/mobgame/gui/view/MobAutoScrollTextView$2;-><init>(Lcom/mobgame/gui/view/MobAutoScrollTextView;JJLcom/mobgame/gui/view/MobAutoScrollTextView$OnTextViewScrollListener;Ljava/util/ArrayList;Z)V

    .line 138
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 140
    :try_start_1
    invoke-virtual {p0}, Lcom/mobgame/gui/view/MobAutoScrollTextView;->removeAllViews()V

    .line 141
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method
