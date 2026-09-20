.class public Lcom/applovin/impl/a/a/b/a/c;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private a:Lcom/applovin/impl/a/a/a/a;

.field private b:Lcom/applovin/impl/sdk/p;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/a/a/b/a/c;)Lcom/applovin/impl/a/a/a/a;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/applovin/impl/a/a/b/a/c;->a:Lcom/applovin/impl/a/a/a/a;

    return-object p0
.end method

.method private a()V
    .locals 3

    .line 87
    new-instance v0, Lcom/applovin/impl/sdk/utils/l;

    invoke-direct {v0}, Lcom/applovin/impl/sdk/utils/l;-><init>()V

    .line 88
    iget-object v1, p0, Lcom/applovin/impl/a/a/b/a/c;->b:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/p;->af()Lcom/applovin/impl/a/a/a;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/a/a/b/a/c;->a:Lcom/applovin/impl/a/a/a/a;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/a/a/a;->a(Lcom/applovin/impl/a/a/a/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/utils/l;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/utils/l;

    .line 90
    iget-object v1, p0, Lcom/applovin/impl/a/a/b/a/c;->b:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/p;->af()Lcom/applovin/impl/a/a/a;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/a/a/b/a/c;->a:Lcom/applovin/impl/a/a/a/a;

    invoke-virtual {v2}, Lcom/applovin/impl/a/a/a/a;->c()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/applovin/impl/a/a/a;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "\nBid Response Preview:\n"

    .line 94
    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/utils/l;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/utils/l;

    .line 95
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/utils/l;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/utils/l;

    .line 98
    :cond_0
    sget v1, Lcom/applovin/sdk/R$id;->email_report_tv:I

    invoke-virtual {p0, v1}, Lcom/applovin/impl/a/a/b/a/c;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/applovin/impl/a/a/b/a/c;->c:Landroid/widget/TextView;

    .line 99
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/utils/l;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lcom/applovin/impl/a/a/b/a/c;->c:Landroid/widget/TextView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/a/a/b/a/c;)Lcom/applovin/impl/sdk/p;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/applovin/impl/a/a/b/a/c;->b:Lcom/applovin/impl/sdk/p;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/applovin/impl/a/a/a/a;Lcom/applovin/impl/sdk/p;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/applovin/impl/a/a/b/a/c;->a:Lcom/applovin/impl/a/a/a/a;

    .line 33
    iput-object p2, p0, Lcom/applovin/impl/a/a/b/a/c;->b:Lcom/applovin/impl/sdk/p;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/applovin/impl/a/a/b/a/c;->a:Lcom/applovin/impl/a/a/a/a;

    invoke-virtual {v0}, Lcom/applovin/impl/a/a/a/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/applovin/impl/a/a/b/a/c;->a:Lcom/applovin/impl/a/a/a/a;

    invoke-virtual {v0}, Lcom/applovin/impl/a/a/a/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/applovin/impl/a/a/b/a/c;->setTitle(Ljava/lang/CharSequence;)V

    .line 48
    sget p1, Lcom/applovin/sdk/R$layout;->creative_debugger_displayed_ad_detail_activity:I

    invoke-virtual {p0, p1}, Lcom/applovin/impl/a/a/b/a/c;->setContentView(I)V

    .line 49
    invoke-direct {p0}, Lcom/applovin/impl/a/a/b/a/c;->a()V

    .line 51
    sget p1, Lcom/applovin/sdk/R$id;->report_ad_button:I

    invoke-virtual {p0, p1}, Lcom/applovin/impl/a/a/b/a/c;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/applovin/impl/a/a/b/a/c;->d:Landroid/widget/Button;

    .line 52
    new-instance v0, Lcom/applovin/impl/a/a/b/a/c$1;

    invoke-direct {v0, p0}, Lcom/applovin/impl/a/a/b/a/c$1;-><init>(Lcom/applovin/impl/a/a/b/a/c;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 65
    invoke-virtual {p0}, Lcom/applovin/impl/a/a/b/a/c;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/applovin/sdk/R$menu;->creative_debugger_displayed_ad_activity_menu:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 72
    sget v0, Lcom/applovin/sdk/R$id;->action_share:I

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 74
    iget-object p1, p0, Lcom/applovin/impl/a/a/b/a/c;->b:Lcom/applovin/impl/sdk/p;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->af()Lcom/applovin/impl/a/a/a;

    move-result-object p1

    iget-object v0, p0, Lcom/applovin/impl/a/a/b/a/c;->a:Lcom/applovin/impl/a/a/a/a;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1}, Lcom/applovin/impl/a/a/a;->a(Lcom/applovin/impl/a/a/a/a;Landroid/content/Context;Z)V

    const/4 p1, 0x1

    return p1

    .line 78
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
