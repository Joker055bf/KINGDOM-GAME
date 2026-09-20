.class Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface$1;
.super Ljava/lang/Object;
.source "TGSGLoginInterface.java"

# interfaces
.implements Landroidx/credentials/CredentialManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface;->googleClearCredential(Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface$GoogleClearCredentialCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/credentials/CredentialManagerCallback<",
        "Ljava/lang/Void;",
        "Landroidx/credentials/exceptions/ClearCredentialException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface$GoogleClearCredentialCallback;


# direct methods
.method constructor <init>(Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface$GoogleClearCredentialCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 147
    iput-object p1, p0, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface$1;->val$callback:Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface$GoogleClearCredentialCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroidx/credentials/exceptions/ClearCredentialException;)V
    .locals 1

    .line 159
    iget-object p1, p0, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface$1;->val$callback:Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface$GoogleClearCredentialCallback;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 160
    invoke-interface {p1, v0}, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface$GoogleClearCredentialCallback;->onResult(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .line 147
    check-cast p1, Landroidx/credentials/exceptions/ClearCredentialException;

    invoke-virtual {p0, p1}, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface$1;->onError(Landroidx/credentials/exceptions/ClearCredentialException;)V

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 147
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface$1;->onResult(Ljava/lang/Void;)V

    return-void
.end method

.method public onResult(Ljava/lang/Void;)V
    .locals 1

    .line 151
    iget-object p1, p0, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface$1;->val$callback:Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface$GoogleClearCredentialCallback;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 152
    invoke-interface {p1, v0}, Lcom/tap4fun/tgsdemo/android/googlelogin/TGSGLoginInterface$GoogleClearCredentialCallback;->onResult(Z)V

    :cond_0
    return-void
.end method
