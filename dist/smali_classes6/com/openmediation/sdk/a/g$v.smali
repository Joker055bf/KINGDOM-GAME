.class Lcom/openmediation/sdk/a/g$v;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openmediation/sdk/a/g;->a(Ljava/lang/String;Lcom/crosspromotion/sdk/nativead/Ad;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/crosspromotion/sdk/nativead/Ad;

.field final synthetic c:Lcom/openmediation/sdk/a/g;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/a/g;Ljava/lang/String;Lcom/crosspromotion/sdk/nativead/Ad;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/a/g$v;->c:Lcom/openmediation/sdk/a/g;

    iput-object p2, p0, Lcom/openmediation/sdk/a/g$v;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/openmediation/sdk/a/g$v;->b:Lcom/crosspromotion/sdk/nativead/Ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/openmediation/sdk/a/g$v;->c:Lcom/openmediation/sdk/a/g;

    invoke-static {v0}, Lcom/openmediation/sdk/a/g;->b(Lcom/openmediation/sdk/a/g;)Lcom/crosspromotion/sdk/nativead/NativeAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/openmediation/sdk/a/g$v;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/openmediation/sdk/a/g$v;->b:Lcom/crosspromotion/sdk/nativead/Ad;

    invoke-interface {v0, v1, v2}, Lcom/crosspromotion/sdk/nativead/NativeAdListener;->onNativeAdReady(Ljava/lang/String;Lcom/crosspromotion/sdk/nativead/Ad;)V

    return-void
.end method
