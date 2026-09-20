.class public Lcom/applovin/impl/b/b/c;
.super Lcom/applovin/impl/b/b/d;
.source "SourceFile"


# instance fields
.field private final a:Landroid/widget/Button;

.field private final b:Landroid/widget/Button;

.field private final c:Landroid/widget/ScrollView;

.field private final d:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/applovin/impl/b/a/h;)V
    .locals 1

    .line 34
    invoke-direct {p0, p1}, Lcom/applovin/impl/b/b/d;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/applovin/sdk/R$layout;->applovin_consent_flow_gdpr_are_you_sure_screen:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 38
    sget p2, Lcom/applovin/sdk/R$id;->back_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/applovin/impl/b/b/c;->a:Landroid/widget/Button;

    .line 39
    sget p2, Lcom/applovin/sdk/R$id;->understand_and_confirm_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/applovin/impl/b/b/c;->b:Landroid/widget/Button;

    .line 41
    sget p2, Lcom/applovin/sdk/R$id;->scroll_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ScrollView;

    iput-object p2, p0, Lcom/applovin/impl/b/b/c;->c:Landroid/widget/ScrollView;

    .line 42
    sget p2, Lcom/applovin/sdk/R$id;->controls_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/applovin/impl/b/b/c;->d:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public getBackButton()Landroid/widget/Button;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/applovin/impl/b/b/c;->a:Landroid/widget/Button;

    return-object v0
.end method

.method protected getControlsView()Landroid/view/ViewGroup;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/applovin/impl/b/b/c;->d:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method protected getScrollView()Landroid/widget/ScrollView;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/applovin/impl/b/b/c;->c:Landroid/widget/ScrollView;

    return-object v0
.end method

.method public getUnderstandAndConfirmButton()Landroid/widget/Button;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/applovin/impl/b/b/c;->b:Landroid/widget/Button;

    return-object v0
.end method
