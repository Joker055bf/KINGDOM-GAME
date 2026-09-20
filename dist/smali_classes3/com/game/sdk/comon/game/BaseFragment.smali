.class public abstract Lcom/game/sdk/comon/game/BaseFragment;
.super Landroid/app/Fragment;
.source "BaseFragment.java"


# instance fields
.field protected isRefresh:Z

.field protected mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/game/sdk/comon/game/BaseFragment;->isRefresh:Z

    return-void
.end method


# virtual methods
.method public addFragment(ILandroid/app/Fragment;ZLjava/lang/String;)V
    .locals 3

    .line 67
    invoke-virtual {p0}, Lcom/game/sdk/comon/game/BaseFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 68
    invoke-virtual {p0}, Lcom/game/sdk/comon/game/BaseFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/game/sdk/comon/game/BaseFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    :cond_0
    if-eqz p3, :cond_1

    .line 72
    invoke-virtual {v0, p4}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 74
    :cond_1
    invoke-virtual {v0, p1, p2, p4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 75
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 76
    invoke-virtual {p0}, Lcom/game/sdk/comon/game/BaseFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    return-void
.end method

.method protected abstract getLayoutResource()I
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 37
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 48
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 50
    iput-object p1, p0, Lcom/game/sdk/comon/game/BaseFragment;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/game/sdk/comon/game/BaseFragment;->getLayoutResource()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onResume()V
    .locals 0

    .line 43
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 56
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 32
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public replaceFragment(ILandroid/app/Fragment;ZLjava/lang/String;)V
    .locals 1

    .line 80
    invoke-virtual {p0}, Lcom/game/sdk/comon/game/BaseFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    if-eqz p3, :cond_0

    .line 82
    invoke-virtual {v0, p4}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 84
    :cond_0
    invoke-virtual {v0, p1, p2, p4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 85
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 86
    invoke-virtual {p0}, Lcom/game/sdk/comon/game/BaseFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    return-void
.end method

.method public startActivity(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 96
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/game/sdk/comon/game/BaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 97
    invoke-virtual {p0, v0}, Lcom/game/sdk/comon/game/BaseFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
