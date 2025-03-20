.class Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$2;
.super Ljava/lang/Object;
.source "PreferencesFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$2;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x31cf6d7eddb7e80dL    # -4.467878638684253E68

    const-string v2, "com/benoitletondor/easybudgetapp/view/PreferencesFragment$2"

    const/16 v3, 0xc

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$2;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$2;->$jacocoInit()[Z

    move-result-object v0

    .line 117
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$2;->this$0:Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$2;->$jacocoInit()[Z

    move-result-object v0

    .line 121
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$2;->this$0:Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;

    invoke-virtual {v1}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getInstance(Landroid/content/Context;)Lcom/benoitletondor/easybudgetapp/helper/Parameters;

    move-result-object v1

    const-string v2, "local_id"

    invoke-virtual {v1, v2}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-boolean v7, v0, v7

    .line 123
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/4 v3, 0x2

    aput-boolean v7, v0, v3

    .line 124
    const-string v3, "android.intent.action.SENDTO"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x3

    aput-boolean v7, v0, v3

    .line 125
    const-string v3, "mailto:"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v3, 0x4

    aput-boolean v7, v0, v3

    .line 126
    const-string v3, "android.intent.extra.EMAIL"

    new-array v4, v7, [Ljava/lang/String;

    iget-object v5, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$2;->this$0:Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;

    invoke-virtual {v5}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0800f1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x5

    aput-boolean v7, v0, v3

    .line 127
    const-string v3, "android.intent.extra.TEXT"

    iget-object v4, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$2;->this$0:Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;

    invoke-virtual {v4}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0800b0

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v1, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x6

    aput-boolean v7, v0, v1

    .line 128
    const-string v1, "android.intent.extra.SUBJECT"

    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$2;->this$0:Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;

    invoke-virtual {v3}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800fd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x7

    aput-boolean v7, v0, v1

    .line 130
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$2;->this$0:Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;

    invoke-virtual {v1}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    aput-boolean v7, v0, v1

    .line 132
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$2;->this$0:Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;

    invoke-virtual {v1, v2}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->startActivity(Landroid/content/Intent;)V

    const/16 v1, 0x9

    aput-boolean v7, v0, v1

    .line 139
    :goto_0
    const/16 v1, 0xb

    aput-boolean v7, v0, v1

    return v8

    .line 136
    :cond_0
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$2;->this$0:Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;

    invoke-virtual {v1}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$2;->this$0:Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;

    invoke-virtual {v2}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800af

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/16 v1, 0xa

    aput-boolean v7, v0, v1

    goto :goto_0
.end method
