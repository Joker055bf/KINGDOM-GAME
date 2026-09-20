.class public Lcom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$a;,
        Lcom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/widget/Button;

.field private final b:Lcom/applovin/impl/adview/a;

.field private c:Lcom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;

.field private d:Lcom/applovin/mediation/MaxAdFormat;

.field private e:Lcom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 47
    invoke-direct {p0, p1, v0, v1}, Lcom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2, v0}, Lcom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    new-instance p2, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;->a:Landroid/widget/Button;

    .line 37
    new-instance p3, Lcom/applovin/impl/adview/a;

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x14

    const v2, 0x1010079

    invoke-direct {p3, v0, v1, v2}, Lcom/applovin/impl/adview/a;-><init>(Landroid/content/Context;II)V

    iput-object p3, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;->b:Lcom/applovin/impl/adview/a;

    .line 39
    sget-object v0, Lcom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;->a:Lcom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;

    iput-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;->c:Lcom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;

    const/4 v0, 0x0

    .line 59
    invoke-virtual {p0, v0}, Lcom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;->setBackgroundColor(I)V

    .line 62
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 63
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/16 v2, 0x11

    invoke-direct {p1, v1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 64
    invoke-virtual {p0, v0, p1}, Lcom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    invoke-virtual {p2, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 68
    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 70
    invoke-virtual {v0, p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    invoke-virtual {p3, v1}, Lcom/applovin/impl/adview/a;->setColor(I)V

    .line 74
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 75
    invoke-virtual {p0, p3, p1}, Lcom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    sget-object p1, Lcom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;->a:Lcom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;

    invoke-direct {p0, p1}, Lcom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;->a(Lcom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;)V

    return-void
.end method

.method private a(Lcom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;)V
    .locals 2

    .line 116
    sget-object v0, Lcom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;->b:Lcom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    .line 118
    invoke-virtual {p0, v0}, Lcom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;->setEnabled(Z)V

    .line 119
    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;->b:Lcom/applovin/impl/adview/a;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/a;->a()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 123
    invoke-virtual {p0, v0}, Lcom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;->setEnabled(Z)V

    .line 124
    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;->b:Lcom/applovin/impl/adview/a;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/a;->b()V

    .line 127
    :goto_0
    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;->a:Landroid/widget/Button;

    invoke-direct {p0, p1}, Lcom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;->b(Lcom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;->a:Landroid/widget/Button;

    invoke-direct {p0, p1}, Lcom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;->c(Lcom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundColor(I)V

    return-void
.end method

.method private b(Lcom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;)Ljava/lang/String;
    .locals 1

    .line 133
    sget-object v0, Lcom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;->a:Lcom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;

    if-ne v0, p1, :cond_0

    const-string p1, "Load"

    return-object p1

    .line 137
    :cond_0
    sget-object v0, Lcom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;->b:Lcom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;

    if-ne v0, p1, :cond_1

    const-string p1, ""

    return-object p1

    :cond_1
    const-string p1, "Show"

    return-object p1
.end method

.method private c(Lcom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;)I
    .locals 1

    .line 149
    sget-object v0, Lcom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;->a:Lcom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;

    if-ne v0, p1, :cond_0

    .line 151
    sget p1, Lcom/applovin/sdk/R$color;->applovin_sdk_brand_color:I

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/utils/g;->a(ILandroid/content/Context;)I

    move-result p1

    return p1

    .line 153
    :cond_0
    sget-object v0, Lcom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;->b:Lcom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;

    if-ne v0, p1, :cond_1

    .line 155
    sget p1, Lcom/applovin/sdk/R$color;->applovin_sdk_brand_color:I

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/utils/g;->a(ILandroid/content/Context;)I

    move-result p1

    return p1

    .line 159
    :cond_1
    sget p1, Lcom/applovin/sdk/R$color;->applovin_sdk_adControlbutton_brightBlueColor:I

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/utils/g;->a(ILandroid/content/Context;)I

    move-result p1

    return p1
.end method


# virtual methods
.method public getControlState()Lcom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;->c:Lcom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;

    return-object v0
.end method

.method public getFormat()Lcom/applovin/mediation/MaxAdFormat;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;->d:Lcom/applovin/mediation/MaxAdFormat;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 175
    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;->e:Lcom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$a;

    if-eqz p1, :cond_0

    .line 177
    invoke-interface {p1, p0}, Lcom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$a;->onClick(Lcom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;)V

    :cond_0
    return-void
.end method

.method public setControlState(Lcom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;->c:Lcom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;

    if-eq v0, p1, :cond_0

    .line 94
    invoke-direct {p0, p1}, Lcom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;->a(Lcom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;)V

    .line 97
    :cond_0
    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;->c:Lcom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;

    return-void
.end method

.method public setFormat(Lcom/applovin/mediation/MaxAdFormat;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;->d:Lcom/applovin/mediation/MaxAdFormat;

    return-void
.end method

.method public setOnClickListener(Lcom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$a;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;->e:Lcom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$a;

    return-void
.end method
