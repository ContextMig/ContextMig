.class Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$4;
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

    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$4;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x444196aa2b86d102L    # -6.439878400329084E-21

    const-string v2, "com/benoitletondor/easybudgetapp/view/PreferencesFragment$4"

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$4;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$4;->$jacocoInit()[Z

    move-result-object v0

    .line 175
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$4;->this$0:Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$4;->$jacocoInit()[Z

    move-result-object v0

    .line 179
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    aput-boolean v3, v0, v3

    .line 180
    const-string v2, "https://twitter.com/BenoitLetondor"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v2, 0x2

    aput-boolean v3, v0, v2

    .line 181
    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$4;->this$0:Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;

    invoke-virtual {v2}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 183
    const/4 v1, 0x0

    const/4 v2, 0x3

    aput-boolean v3, v0, v2

    return v1
.end method
