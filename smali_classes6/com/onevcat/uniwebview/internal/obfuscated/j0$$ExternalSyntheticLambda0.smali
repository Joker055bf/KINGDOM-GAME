.class public final synthetic Lcom/onevcat/uniwebview/internal/obfuscated/j0$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field public final synthetic f$0:Landroid/webkit/CookieManager;


# direct methods
.method public synthetic constructor <init>(Landroid/webkit/CookieManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onevcat/uniwebview/internal/obfuscated/j0$$ExternalSyntheticLambda0;->f$0:Landroid/webkit/CookieManager;

    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/onevcat/uniwebview/internal/obfuscated/j0$$ExternalSyntheticLambda0;->f$0:Landroid/webkit/CookieManager;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lcom/onevcat/uniwebview/internal/obfuscated/j0;->a(Landroid/webkit/CookieManager;Ljava/lang/Boolean;)V

    return-void
.end method
