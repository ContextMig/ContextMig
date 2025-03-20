.class public Lorg/mozilla/focus/open/OpenWithFragment;
.super Landroid/support/v7/app/AppCompatDialogFragment;
.source "OpenWithFragment.java"

# interfaces
.implements Lorg/mozilla/focus/open/AppAdapter$OnAppSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/focus/open/OpenWithFragment$CustomWidthBottomSheetDialog;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance([Landroid/content/pm/ActivityInfo;Ljava/lang/String;Landroid/content/pm/ActivityInfo;)Lorg/mozilla/focus/open/OpenWithFragment;
    .locals 3
    .param p0, "apps"    # [Landroid/content/pm/ActivityInfo;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "store"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 38
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 39
    .local v0, "arguments":Landroid/os/Bundle;
    const-string v2, "apps"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 40
    const-string v2, "url"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v2, "store"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 43
    new-instance v1, Lorg/mozilla/focus/open/OpenWithFragment;

    invoke-direct {v1}, Lorg/mozilla/focus/open/OpenWithFragment;-><init>()V

    .line 44
    .local v1, "fragment":Lorg/mozilla/focus/open/OpenWithFragment;
    invoke-virtual {v1, v0}, Lorg/mozilla/focus/open/OpenWithFragment;->setArguments(Landroid/os/Bundle;)V

    .line 46
    return-object v1
.end method


# virtual methods
.method public onAppSelected(Lorg/mozilla/focus/open/AppAdapter$App;)V
    .locals 4
    .param p1, "app"    # Lorg/mozilla/focus/open/AppAdapter$App;

    .prologue
    .line 137
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {p0}, Lorg/mozilla/focus/open/OpenWithFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "url"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 138
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Lorg/mozilla/focus/open/AppAdapter$App;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    invoke-virtual {p0, v0}, Lorg/mozilla/focus/open/OpenWithFragment;->startActivity(Landroid/content/Intent;)V

    .line 141
    invoke-virtual {p0}, Lorg/mozilla/focus/open/OpenWithFragment;->dismiss()V

    .line 142
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 62
    new-instance v4, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lorg/mozilla/focus/open/OpenWithFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x1030237

    invoke-direct {v4, v5, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 65
    .local v4, "wrapper":Landroid/view/ContextThemeWrapper;
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0b003c

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 67
    .local v3, "view":Landroid/view/View;
    new-instance v2, Lorg/mozilla/focus/open/OpenWithFragment$CustomWidthBottomSheetDialog;

    invoke-direct {v2, v4, v7}, Lorg/mozilla/focus/open/OpenWithFragment$CustomWidthBottomSheetDialog;-><init>(Landroid/content/Context;Lorg/mozilla/focus/open/OpenWithFragment$1;)V

    .line 68
    .local v2, "dialog":Landroid/app/Dialog;
    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 70
    const v5, 0x7f090024

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    .line 71
    .local v1, "appList":Landroid/support/v7/widget/RecyclerView;
    new-instance v5, Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {v5, v4, v6, v7}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v1, v5}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 73
    new-instance v0, Lorg/mozilla/focus/open/AppAdapter;

    .line 75
    invoke-virtual {p0}, Lorg/mozilla/focus/open/OpenWithFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "apps"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, [Landroid/content/pm/ActivityInfo;

    check-cast v5, [Landroid/content/pm/ActivityInfo;

    .line 76
    invoke-virtual {p0}, Lorg/mozilla/focus/open/OpenWithFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "store"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ActivityInfo;

    invoke-direct {v0, v4, v5, v6}, Lorg/mozilla/focus/open/AppAdapter;-><init>(Landroid/content/Context;[Landroid/content/pm/ActivityInfo;Landroid/content/pm/ActivityInfo;)V

    .line 77
    .local v0, "adapter":Lorg/mozilla/focus/open/AppAdapter;
    invoke-virtual {v0, p0}, Lorg/mozilla/focus/open/AppAdapter;->setOnAppSelectedListener(Lorg/mozilla/focus/open/AppAdapter$OnAppSelectedListener;)V

    .line 78
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 80
    return-object v2
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lorg/mozilla/focus/open/OpenWithFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 53
    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 56
    invoke-super {p0}, Landroid/support/v7/app/AppCompatDialogFragment;->onPause()V

    .line 57
    return-void
.end method
