.class public Lcom/applovin/impl/b/b/g;
.super Lcom/applovin/impl/b/b/d;
.source "SourceFile"


# instance fields
.field private final a:Landroid/widget/TextView;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/Switch;

.field private final e:Landroid/widget/Switch;

.field private final f:Landroid/widget/Switch;

.field private final g:Landroid/widget/Button;

.field private final h:Landroid/widget/Button;

.field private final i:Landroid/widget/ScrollView;

.field private final j:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/applovin/impl/b/a/h;)V
    .locals 2

    .line 48
    invoke-direct {p0, p1}, Lcom/applovin/impl/b/b/d;-><init>(Landroid/content/Context;)V

    .line 50
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/applovin/sdk/R$layout;->applovin_consent_flow_gdpr_phase_main_screen:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 52
    sget v0, Lcom/applovin/sdk/R$id;->title_textview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 53
    invoke-virtual {p2}, Lcom/applovin/impl/b/a/h;->e()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    sget p2, Lcom/applovin/sdk/R$id;->personalized_advertising_switch_textview:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/applovin/impl/b/b/g;->a:Landroid/widget/TextView;

    .line 56
    sget p2, Lcom/applovin/sdk/R$id;->analytics_purposes_switch_textview:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/applovin/impl/b/b/g;->b:Landroid/widget/TextView;

    .line 57
    sget p2, Lcom/applovin/sdk/R$id;->privacy_policy_switch_textview:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/applovin/impl/b/b/g;->c:Landroid/widget/TextView;

    .line 59
    sget p2, Lcom/applovin/sdk/R$id;->personalized_advertising_switch:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Switch;

    iput-object p2, p0, Lcom/applovin/impl/b/b/g;->d:Landroid/widget/Switch;

    .line 60
    sget p2, Lcom/applovin/sdk/R$id;->analytics_purposes_switch:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Switch;

    iput-object p2, p0, Lcom/applovin/impl/b/b/g;->e:Landroid/widget/Switch;

    .line 61
    sget p2, Lcom/applovin/sdk/R$id;->privacy_policy_switch:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Switch;

    iput-object p2, p0, Lcom/applovin/impl/b/b/g;->f:Landroid/widget/Switch;

    .line 63
    sget p2, Lcom/applovin/sdk/R$id;->continue_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/applovin/impl/b/b/g;->g:Landroid/widget/Button;

    .line 64
    sget p2, Lcom/applovin/sdk/R$id;->learn_more_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/applovin/impl/b/b/g;->h:Landroid/widget/Button;

    .line 66
    sget p2, Lcom/applovin/sdk/R$id;->scroll_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ScrollView;

    iput-object p2, p0, Lcom/applovin/impl/b/b/g;->i:Landroid/widget/ScrollView;

    .line 67
    sget p2, Lcom/applovin/sdk/R$id;->controls_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/applovin/impl/b/b/g;->j:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public getAnalyticsPurposesSwitch()Landroid/widget/Switch;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/applovin/impl/b/b/g;->e:Landroid/widget/Switch;

    return-object v0
.end method

.method public getAnalyticsPurposesSwitchTextView()Landroid/widget/TextView;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/applovin/impl/b/b/g;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method public getContinueButton()Landroid/widget/Button;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/applovin/impl/b/b/g;->g:Landroid/widget/Button;

    return-object v0
.end method

.method protected getControlsView()Landroid/view/ViewGroup;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/applovin/impl/b/b/g;->j:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getLearnMoreButton()Landroid/widget/Button;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/applovin/impl/b/b/g;->h:Landroid/widget/Button;

    return-object v0
.end method

.method public getPersonalizedAdvertisingSwitch()Landroid/widget/Switch;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/applovin/impl/b/b/g;->d:Landroid/widget/Switch;

    return-object v0
.end method

.method public getPersonalizedAdvertisingSwitchTextView()Landroid/widget/TextView;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/applovin/impl/b/b/g;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method public getPrivacyPolicySwitch()Landroid/widget/Switch;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/applovin/impl/b/b/g;->f:Landroid/widget/Switch;

    return-object v0
.end method

.method public getPrivacyPolicySwitchTextView()Landroid/widget/TextView;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/applovin/impl/b/b/g;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method protected getScrollView()Landroid/widget/ScrollView;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/applovin/impl/b/b/g;->i:Landroid/widget/ScrollView;

    return-object v0
.end method
