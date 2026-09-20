.class public final synthetic Lcom/onevcat/uniwebview/internal/obfuscated/j0$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field public final synthetic f$0:Landroid/webkit/CookieManager;

.field public final synthetic f$1:Landroid/webkit/ValueCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/webkit/CookieManager;Landroid/webkit/ValueCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/j0$$ExternalSyntheticLambda2;->f$0:Landroid/webkit/CookieManager;

    iput-object p2, p0, Lcom/onevcat/uniwebview/internal/obfuscated/j0$$ExternalSyntheticLambda2;->f$1:Landroid/webkit/ValueCallback;

    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/j0$$ExternalSyntheticLambda2;->f$0:Landroid/webkit/CookieManager;

    iget-object v1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/j0$$ExternalSyntheticLambda2;->f$1:Landroid/webkit/ValueCallback;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, p1}, Lcom/onevcat/uniwebview/internal/obfuscated/j0;->a(Landroid/webkit/CookieManager;Landroid/webkit/ValueCallback;Ljava/lang/Boolean;)V

    return-void
.end method
