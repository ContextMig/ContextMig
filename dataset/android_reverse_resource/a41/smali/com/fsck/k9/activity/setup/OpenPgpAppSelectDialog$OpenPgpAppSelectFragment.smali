.class public Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment;
.super Landroid/app/DialogFragment;
.source "OpenPgpAppSelectDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OpenPgpAppSelectFragment"
.end annotation


# instance fields
.field private openPgpProviderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpProviderEntry;",
            ">;"
        }
    .end annotation
.end field

.field private selectedPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment;->openPgpProviderList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$200(Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment;->openPgpProviderList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$502(Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment;->selectedPackage:Ljava/lang/String;

    return-object p1
.end method

.method private getIndexOfProviderList(Ljava/lang/String;)I
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 200
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment;->openPgpProviderList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpProviderEntry;

    .line 201
    .local v0, "app":Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpProviderEntry;
    invoke-static {v0}, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpProviderEntry;->access$600(Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpProviderEntry;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 202
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment;->openPgpProviderList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 207
    .end local v0    # "app":Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpProviderEntry;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private populateAppList()V
    .locals 15

    .prologue
    .line 80
    iget-object v11, p0, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment;->openPgpProviderList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 82
    invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 84
    .local v0, "context":Landroid/content/Context;
    new-instance v6, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpProviderEntry;

    const-string v11, ""

    const v12, 0x7f0703d2

    .line 85
    invoke-virtual {v0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 86
    invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f020031

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-direct {v6, v11, v12, v13}, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpProviderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 87
    .local v6, "noneEntry":Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpProviderEntry;
    iget-object v11, p0, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment;->openPgpProviderList:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 89
    invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Lorg/openintents/openpgp/util/OpenPgpAppPreference;->isApgInstalled(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f020066

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 91
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v11, p0, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment;->openPgpProviderList:Ljava/util/ArrayList;

    new-instance v12, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpProviderEntry;

    const-string v13, "apg-placeholder"

    const v14, 0x7f070139

    .line 92
    invoke-virtual {p0, v14}, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14, v2}, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpProviderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 91
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    .end local v2    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v11, "org.openintents.openpgp.IOpenPgpService2"

    invoke-direct {v3, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 97
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v3, v12}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 98
    .local v8, "resInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    .line 99
    .local v1, "hasNonBlacklistedChoices":Z
    if-eqz v8, :cond_2

    .line 100
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 101
    .local v9, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v12, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v12, :cond_1

    .line 105
    iget-object v12, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v12, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 106
    .local v7, "packageName":Ljava/lang/String;
    iget-object v12, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 107
    .local v10, "simpleName":Ljava/lang/String;
    iget-object v12, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/content/pm/ServiceInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 109
    .restart local v2    # "icon":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog;->access$000()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 110
    iget-object v12, p0, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment;->openPgpProviderList:Ljava/util/ArrayList;

    new-instance v13, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpProviderEntry;

    invoke-direct {v13, v7, v10, v2}, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpProviderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    const/4 v1, 0x1

    goto :goto_0

    .line 116
    .end local v2    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v9    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v10    # "simpleName":Ljava/lang/String;
    :cond_2
    if-nez v1, :cond_3

    .line 118
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-static {}, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog;->access$100()Landroid/content/Intent;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 119
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 120
    .restart local v9    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    new-instance v4, Landroid/content/Intent;

    invoke-static {}, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog;->access$100()Landroid/content/Intent;

    move-result-object v12

    invoke-direct {v4, v12}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 121
    .local v4, "marketIntent":Landroid/content/Intent;
    iget-object v12, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v12}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    iget-object v12, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 123
    .restart local v2    # "icon":Landroid/graphics/drawable/Drawable;
    iget-object v12, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 124
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    .line 123
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 125
    .local v5, "marketName":Ljava/lang/String;
    const v12, 0x7f0703d1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v5, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 127
    .restart local v10    # "simpleName":Ljava/lang/String;
    iget-object v12, p0, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment;->openPgpProviderList:Ljava/util/ArrayList;

    new-instance v13, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpProviderEntry;

    const-string v14, "org.sufficientlysecure.keychain"

    invoke-direct {v13, v14, v10, v2, v4}, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpProviderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/content/Intent;)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 131
    .end local v2    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v4    # "marketIntent":Landroid/content/Intent;
    .end local v5    # "marketName":Ljava/lang/String;
    .end local v9    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v10    # "simpleName":Ljava/lang/String;
    :cond_3
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 135
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 136
    invoke-static {}, Lcom/fsck/k9/K9;->getOpenPgpProvider()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment;->selectedPackage:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 142
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v6, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 144
    .local v6, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f070028

    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 147
    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment;->populateAppList()V

    .line 150
    new-instance v0, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment$1;

    invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x1090012

    const v4, 0x1020014

    iget-object v5, p0, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment;->openPgpProviderList:Ljava/util/ArrayList;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment$1;-><init>(Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment;Landroid/content/Context;IILjava/util/List;)V

    .line 169
    .local v0, "adapter":Landroid/widget/ListAdapter;
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment;->selectedPackage:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment;->getIndexOfProviderList(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment$2;

    invoke-direct {v2, p0}, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment$2;-><init>(Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment;)V

    invoke-virtual {v6, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 196
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 212
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 214
    invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog;

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment;->selectedPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/OpenPgpAppSelectDialog;->onSelectProvider(Ljava/lang/String;)V

    .line 215
    return-void
.end method
