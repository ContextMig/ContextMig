.class Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$6$3;
.super Ljava/lang/Object;
.source "PreferencesFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$6;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$1:Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$6;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$6$3;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x748a3a2ea43ec8b5L    # 2.4035852342005097E253

    const-string v2, "com/benoitletondor/easybudgetapp/view/PreferencesFragment$6$3"

    const/4 v3, 0x6

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$6$3;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$6;Landroid/app/Dialog;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$6$3;->$jacocoInit()[Z

    move-result-object v0

    .line 273
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$6$3;->this$1:Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$6;

    iput-object p2, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$6$3;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$6$3;->$jacocoInit()[Z

    move-result-object v0

    .line 277
    if-nez p2, :cond_0

    aput-boolean v2, v0, v2

    .line 281
    :goto_0
    aput-boolean v2, v0, v3

    return-void

    .line 277
    :cond_0
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$6$3;->this$1:Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$6;

    iget-object v1, v1, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$6;->this$0:Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;

    invoke-virtual {v1}, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v1, v2, :cond_1

    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    .line 279
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/PreferencesFragment$6$3;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    const/4 v1, 0x4

    aput-boolean v2, v0, v1

    goto :goto_0
.end method
