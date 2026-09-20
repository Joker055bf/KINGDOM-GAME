.class public final Lcom/onevcat/uniwebview/internal/obfuscated/v;
.super Landroidx/browser/customtabs/CustomTabsCallback;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/onevcat/uniwebview/internal/obfuscated/h3;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroidx/browser/customtabs/CustomTabsCallback;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/v;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(ILandroid/os/Bundle;)V
    .locals 7

    .line 1
    iget-object p2, p0, Lcom/onevcat/uniwebview/internal/obfuscated/v;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/onevcat/uniwebview/internal/obfuscated/h3;

    if-eqz p2, :cond_7

    .line 2
    iget-boolean v0, p2, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->i:Z

    const-string v1, "message"

    if-eqz v0, :cond_0

    .line 3
    sget-object p2, Lcom/onevcat/uniwebview/internal/obfuscated/p;->b:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Navigation event received after dispose: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    sget-object v0, Lcom/onevcat/uniwebview/internal/obfuscated/o;->c:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {p2, v0, p1}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 29
    :cond_0
    sget-object v0, Lcom/onevcat/uniwebview/internal/obfuscated/p;->b:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onNavigationEvent: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    sget-object v3, Lcom/onevcat/uniwebview/internal/obfuscated/o;->d:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {v0, v3, v2}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    const/4 v2, 0x1

    const-string v4, "parameters"

    const-string v5, "method"

    if-eq p1, v2, :cond_6

    const/4 v6, 0x2

    if-eq p1, v6, :cond_5

    const/4 v6, 0x3

    if-eq p1, v6, :cond_4

    const/4 v6, 0x4

    if-eq p1, v6, :cond_3

    const/4 v6, 0x6

    if-eq p1, v6, :cond_1

    goto/16 :goto_0

    .line 58
    :cond_1
    iget-boolean p1, p2, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->j:Z

    if-eqz p1, :cond_2

    const-string p1, "onNavigationEvent: TAB_HIDDEN already handled, ignoring duplicate event."

    .line 60
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0, v3, p1}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 87
    :cond_2
    iput-boolean v2, p2, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->j:Z

    const-string p1, "tab_hidden"

    .line 88
    invoke-static {p1}, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    iget-object v1, p2, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->d:Lcom/onevcat/uniwebview/internal/obfuscated/j;

    .line 90
    sget-object v2, Lcom/onevcat/uniwebview/internal/obfuscated/n3;->t:Lcom/onevcat/uniwebview/internal/obfuscated/n3;

    .line 91
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    iget-object v3, v1, Lcom/onevcat/uniwebview/internal/obfuscated/j;->b:Lcom/onevcat/uniwebview/internal/obfuscated/i;

    iget-object v1, v1, Lcom/onevcat/uniwebview/internal/obfuscated/j;->a:Ljava/lang/String;

    invoke-virtual {v3, v1, v2, v0}, Lcom/onevcat/uniwebview/internal/obfuscated/i;->a(Ljava/lang/String;Lcom/onevcat/uniwebview/internal/obfuscated/n3;Ljava/lang/String;)V

    .line 258
    invoke-virtual {p2, p1}, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p1, "onNavigationEvent: Navigation Aborted"

    .line 260
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 286
    invoke-virtual {v0, v3, p1}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string p1, "onNavigationEvent: Navigation Failed"

    .line 288
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    invoke-virtual {v0, v3, p1}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    .line 315
    iget-object p1, p2, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->d:Lcom/onevcat/uniwebview/internal/obfuscated/j;

    .line 316
    sget-object p2, Lcom/onevcat/uniwebview/internal/obfuscated/n3;->t:Lcom/onevcat/uniwebview/internal/obfuscated/n3;

    const-string v0, "navigation_failed"

    .line 317
    invoke-static {v0}, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 318
    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 484
    iget-object v1, p1, Lcom/onevcat/uniwebview/internal/obfuscated/j;->b:Lcom/onevcat/uniwebview/internal/obfuscated/i;

    iget-object p1, p1, Lcom/onevcat/uniwebview/internal/obfuscated/j;->a:Ljava/lang/String;

    invoke-virtual {v1, p1, p2, v0}, Lcom/onevcat/uniwebview/internal/obfuscated/i;->a(Ljava/lang/String;Lcom/onevcat/uniwebview/internal/obfuscated/n3;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string p1, "onNavigationEvent: Navigation Finished"

    .line 486
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 512
    invoke-virtual {v0, v3, p1}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    .line 513
    iget-object p1, p2, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->d:Lcom/onevcat/uniwebview/internal/obfuscated/j;

    .line 514
    sget-object p2, Lcom/onevcat/uniwebview/internal/obfuscated/n3;->t:Lcom/onevcat/uniwebview/internal/obfuscated/n3;

    const-string v0, "navigation_finished"

    .line 515
    invoke-static {v0}, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 516
    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 682
    iget-object v1, p1, Lcom/onevcat/uniwebview/internal/obfuscated/j;->b:Lcom/onevcat/uniwebview/internal/obfuscated/i;

    iget-object p1, p1, Lcom/onevcat/uniwebview/internal/obfuscated/j;->a:Ljava/lang/String;

    invoke-virtual {v1, p1, p2, v0}, Lcom/onevcat/uniwebview/internal/obfuscated/i;->a(Ljava/lang/String;Lcom/onevcat/uniwebview/internal/obfuscated/n3;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string p1, "onNavigationEvent: Navigation Started"

    .line 684
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 710
    invoke-virtual {v0, v3, p1}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    .line 711
    iget-object p1, p2, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->d:Lcom/onevcat/uniwebview/internal/obfuscated/j;

    .line 712
    sget-object p2, Lcom/onevcat/uniwebview/internal/obfuscated/n3;->t:Lcom/onevcat/uniwebview/internal/obfuscated/n3;

    const-string v0, "navigation_started"

    .line 713
    invoke-static {v0}, Lcom/onevcat/uniwebview/internal/obfuscated/h3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 714
    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 880
    iget-object v1, p1, Lcom/onevcat/uniwebview/internal/obfuscated/j;->b:Lcom/onevcat/uniwebview/internal/obfuscated/i;

    iget-object p1, p1, Lcom/onevcat/uniwebview/internal/obfuscated/j;->a:Ljava/lang/String;

    invoke-virtual {v1, p1, p2, v0}, Lcom/onevcat/uniwebview/internal/obfuscated/i;->a(Ljava/lang/String;Lcom/onevcat/uniwebview/internal/obfuscated/n3;Ljava/lang/String;)V

    :cond_7
    :goto_0
    return-void
.end method
