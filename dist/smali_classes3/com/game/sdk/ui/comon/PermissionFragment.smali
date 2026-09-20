.class public Lcom/game/sdk/ui/comon/PermissionFragment;
.super Landroid/app/DialogFragment;
.source "PermissionFragment.java"


# static fields
.field public static PACKAGE_NAME:Ljava/lang/String; = null

.field public static final PERMISSIONS:Ljava/lang/String; = "permissions"

.field private static final REQUEST_CODE_PERMISSIONS:I = 0x4e21

.field public static activity:Landroid/app/Activity;


# instance fields
.field private dialog:Landroid/app/Dialog;

.field private onOpChangedListener:Landroid/app/AppOpsManager$OnOpChangedListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/game/sdk/ui/comon/PermissionFragment;->onOpChangedListener:Landroid/app/AppOpsManager$OnOpChangedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/game/sdk/ui/comon/PermissionFragment;)Landroid/app/Dialog;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/game/sdk/ui/comon/PermissionFragment;->dialog:Landroid/app/Dialog;

    return-object p0
.end method

.method public static newInstance([Ljava/lang/String;)Lcom/game/sdk/ui/comon/PermissionFragment;
    .locals 3

    .line 42
    new-instance v0, Lcom/game/sdk/ui/comon/PermissionFragment;

    invoke-direct {v0}, Lcom/game/sdk/ui/comon/PermissionFragment;-><init>()V

    .line 44
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "permissions"

    .line 45
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 46
    invoke-virtual {v0, v1}, Lcom/game/sdk/ui/comon/PermissionFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 65
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string/jumbo p1, "v\u00e0o day"

    const-string v0, "PermissionFragment"

    .line 66
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-virtual {p0}, Lcom/game/sdk/ui/comon/PermissionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string/jumbo v1, "v\u00e0o args ! null"

    .line 69
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "permissions"

    .line 70
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x4e21

    .line 71
    invoke-virtual {p0, p1, v0}, Lcom/game/sdk/ui/comon/PermissionFragment;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/game/sdk/ui/comon/PermissionFragment;->dismiss()V

    :goto_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 53
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/game/sdk/ui/comon/PermissionFragment;->dialog:Landroid/app/Dialog;

    .line 54
    invoke-static {}, Lcom/mobgame/MobGameSDK;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/game/sdk/ui/comon/PermissionFragment;->PACKAGE_NAME:Ljava/lang/String;

    .line 56
    iget-object p1, p0, Lcom/game/sdk/ui/comon/PermissionFragment;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/Window;->requestFeature(I)Z

    .line 57
    iget-object p1, p0, Lcom/game/sdk/ui/comon/PermissionFragment;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 59
    iget-object p1, p0, Lcom/game/sdk/ui/comon/PermissionFragment;->dialog:Landroid/app/Dialog;

    return-object p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 6

    const/16 v0, 0x4e21

    if-ne p1, v0, :cond_3

    :try_start_0
    const-string p1, "chieuhv"

    const-string v0, "fail"

    .line 85
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    .line 89
    :goto_0
    array-length v2, p3

    const/4 v3, 0x1

    if-ge v0, v2, :cond_1

    .line 90
    aget-object v2, p2, v0

    .line 91
    aget v4, p3, v0

    .line 92
    new-instance v5, Lcom/mobgame/model/MPermission;

    invoke-direct {v5, v2, v4}, Lcom/mobgame/model/MPermission;-><init>(Ljava/lang/String;I)V

    .line 93
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, -0x1

    if-ne v4, v2, :cond_0

    move v1, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    .line 99
    iget-object p1, p0, Lcom/game/sdk/ui/comon/PermissionFragment;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void

    .line 104
    :cond_2
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/game/sdk/ui/comon/PermissionFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 105
    sget p2, Lcom/mobgame/R$string;->text_dashboard_sheet:I

    invoke-virtual {p0, p2}, Lcom/game/sdk/ui/comon/PermissionFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 106
    invoke-virtual {p1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const-string p2, "SETTING"

    .line 107
    new-instance p3, Lcom/game/sdk/ui/comon/PermissionFragment$1;

    invoke-direct {p3, p0}, Lcom/game/sdk/ui/comon/PermissionFragment$1;-><init>(Lcom/game/sdk/ui/comon/PermissionFragment;)V

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 120
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 121
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/Window;

    const/16 p3, 0x50

    invoke-virtual {p2, p3}, Landroid/view/Window;->setGravity(I)V

    .line 122
    new-instance p2, Lcom/game/sdk/ui/comon/PermissionFragment$2;

    invoke-direct {p2, p0}, Lcom/game/sdk/ui/comon/PermissionFragment$2;-><init>(Lcom/game/sdk/ui/comon/PermissionFragment;)V

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 128
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 132
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_3
    const-string p1, "qwewqewqqweq"

    const-string/jumbo p2, "success: "

    .line 136
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
