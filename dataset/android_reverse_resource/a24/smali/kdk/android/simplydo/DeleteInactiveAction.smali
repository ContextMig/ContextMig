.class public Lkdk/android/simplydo/DeleteInactiveAction;
.super Ljava/lang/Object;
.source "DeleteInactiveAction.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private dataViewer:Lkdk/android/simplydo/DataViewer;

.field private dialogBuilder:Landroid/app/AlertDialog$Builder;

.field private itemPropertiesAdapter:Lkdk/android/simplydo/ItemPropertiesAdapter;

.field private listPropertiesAdapter:Lkdk/android/simplydo/ListPropertiesAdapter;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lkdk/android/simplydo/DataViewer;Lkdk/android/simplydo/ListPropertiesAdapter;Lkdk/android/simplydo/ItemPropertiesAdapter;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "dataViewer"    # Lkdk/android/simplydo/DataViewer;
    .param p3, "listPropertiesAdapter"    # Lkdk/android/simplydo/ListPropertiesAdapter;
    .param p4, "itemPropertiesAdapter"    # Lkdk/android/simplydo/ItemPropertiesAdapter;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lkdk/android/simplydo/DeleteInactiveAction;->activity:Landroid/app/Activity;

    .line 45
    iput-object p2, p0, Lkdk/android/simplydo/DeleteInactiveAction;->dataViewer:Lkdk/android/simplydo/DataViewer;

    .line 46
    iput-object p3, p0, Lkdk/android/simplydo/DeleteInactiveAction;->listPropertiesAdapter:Lkdk/android/simplydo/ListPropertiesAdapter;

    .line 47
    iput-object p4, p0, Lkdk/android/simplydo/DeleteInactiveAction;->itemPropertiesAdapter:Lkdk/android/simplydo/ItemPropertiesAdapter;

    .line 49
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lkdk/android/simplydo/DeleteInactiveAction;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lkdk/android/simplydo/DeleteInactiveAction;->dialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 50
    iget-object v0, p0, Lkdk/android/simplydo/DeleteInactiveAction;->dialogBuilder:Landroid/app/AlertDialog$Builder;

    const-string v1, "Are you sure you want to delete all inactive items in this list?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Delete Inactive?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Yes"

    new-instance v2, Lkdk/android/simplydo/DeleteInactiveAction$1;

    invoke-direct {v2, p0}, Lkdk/android/simplydo/DeleteInactiveAction$1;-><init>(Lkdk/android/simplydo/DeleteInactiveAction;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "No"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lkdk/android/simplydo/DeleteInactiveAction;)V
    .locals 0
    .param p0, "x0"    # Lkdk/android/simplydo/DeleteInactiveAction;

    .prologue
    .line 29
    invoke-direct {p0}, Lkdk/android/simplydo/DeleteInactiveAction;->deleteInactive()V

    return-void
.end method

.method private deleteInactive()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lkdk/android/simplydo/DeleteInactiveAction;->dataViewer:Lkdk/android/simplydo/DataViewer;

    invoke-interface {v0}, Lkdk/android/simplydo/DataViewer;->deleteInactive()V

    .line 84
    iget-object v0, p0, Lkdk/android/simplydo/DeleteInactiveAction;->itemPropertiesAdapter:Lkdk/android/simplydo/ItemPropertiesAdapter;

    invoke-virtual {v0}, Lkdk/android/simplydo/ItemPropertiesAdapter;->notifyDataSetChanged()V

    .line 85
    iget-object v0, p0, Lkdk/android/simplydo/DeleteInactiveAction;->listPropertiesAdapter:Lkdk/android/simplydo/ListPropertiesAdapter;

    invoke-virtual {v0}, Lkdk/android/simplydo/ListPropertiesAdapter;->notifyDataSetChanged()V

    .line 86
    return-void
.end method


# virtual methods
.method public createDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lkdk/android/simplydo/DeleteInactiveAction;->dialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public deleteInactive(I)V
    .locals 4
    .param p1, "dialogId"    # I

    .prologue
    .line 63
    iget-object v2, p0, Lkdk/android/simplydo/DeleteInactiveAction;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 64
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "confirmDeleteInactive"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 66
    .local v0, "confirmDeleteInactive":Z
    if-eqz v0, :cond_0

    .line 68
    iget-object v2, p0, Lkdk/android/simplydo/DeleteInactiveAction;->activity:Landroid/app/Activity;

    invoke-virtual {v2, p1}, Landroid/app/Activity;->showDialog(I)V

    .line 74
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-direct {p0}, Lkdk/android/simplydo/DeleteInactiveAction;->deleteInactive()V

    goto :goto_0
.end method
