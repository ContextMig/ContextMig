.class public Lcom/haringeymobile/ukweather/CityManagementActivity;
.super Lcom/haringeymobile/ukweather/ThemedActivity;
.source "CityManagementActivity.java"

# interfaces
.implements Lcom/haringeymobile/ukweather/CityListFragmentWithUtilityButtons$OnUtilityButtonClickedListener;
.implements Lcom/haringeymobile/ukweather/CityUtilitiesCursorAdapter$Listener;
.implements Lcom/haringeymobile/ukweather/DeleteCityDialog$OnDialogButtonClickedListener;


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field static final CITY_DELETE_DIALOG_FRAGMENT_TAG:Ljava/lang/String; = "delete city dialog"

.field public static final CITY_ID:Ljava/lang/String; = "city id"

.field public static final CITY_NEW_NAME:Ljava/lang/String; = "city new name"

.field public static final CITY_ORDER_FROM:Ljava/lang/String; = "city order x"

.field public static final CITY_ORDER_TO:Ljava/lang/String; = "city order y"


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/CityManagementActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0xc76c047a65f1b18L

    const-string v2, "com/haringeymobile/ukweather/CityManagementActivity"

    const/16 v3, 0x35

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/CityManagementActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/CityManagementActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 22
    invoke-direct {p0}, Lcom/haringeymobile/ukweather/ThemedActivity;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$000(Lcom/haringeymobile/ukweather/CityManagementActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/CityManagementActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 22
    invoke-direct {p0}, Lcom/haringeymobile/ukweather/CityManagementActivity;->showEmptyNameErrorMessage()V

    const/16 v1, 0x33

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$100(Lcom/haringeymobile/ukweather/CityManagementActivity;ILjava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/CityManagementActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/haringeymobile/ukweather/CityManagementActivity;->renameCity(ILjava/lang/String;)V

    const/16 v1, 0x34

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private getDialogOnClickListener(ILjava/lang/String;Landroid/widget/EditText;)Landroid/content/DialogInterface$OnClickListener;
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/CityManagementActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 100
    new-instance v0, Lcom/haringeymobile/ukweather/CityManagementActivity$1;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/haringeymobile/ukweather/CityManagementActivity$1;-><init>(Lcom/haringeymobile/ukweather/CityManagementActivity;Landroid/widget/EditText;Ljava/lang/String;I)V

    .line 115
    .local v0, "dialogOnClickListener":Landroid/content/DialogInterface$OnClickListener;
    const/16 v2, 0x17

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    return-object v0
.end method

.method private getDialogTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/CityManagementActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 71
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/CityManagementActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/16 v2, 0x12

    aput-boolean v4, v0, v2

    .line 72
    const v2, 0x7f060044

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x13

    aput-boolean v4, v0, v2

    return-object v1
.end method

.method private getNewCityNameEditText()Landroid/widget/EditText;
    .locals 5

    .prologue
    const/4 v3, -0x2

    const/4 v4, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/CityManagementActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 81
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x14

    aput-boolean v4, v0, v2

    .line 82
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x15

    aput-boolean v4, v0, v3

    .line 85
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    const/16 v2, 0x16

    aput-boolean v4, v0, v2

    return-object v1
.end method

.method private renameCity(ILjava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/CityManagementActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 132
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/haringeymobile/ukweather/database/GeneralDatabaseService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x19

    aput-boolean v3, v0, v2

    .line 133
    const-string v2, "com.haringeymobile.ukweather.rename_city"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x1a

    aput-boolean v3, v0, v2

    .line 134
    const-string v2, "city id"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v2, 0x1b

    aput-boolean v3, v0, v2

    .line 135
    const-string v2, "city new name"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x1c

    aput-boolean v3, v0, v2

    .line 136
    invoke-virtual {p0, v1}, Lcom/haringeymobile/ukweather/CityManagementActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 137
    const/16 v1, 0x1d

    aput-boolean v3, v0, v1

    return-void
.end method

.method private showEmptyNameErrorMessage()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/CityManagementActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 122
    const v1, 0x7f060073

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 123
    const/16 v1, 0x18

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private updateLastRequestedCityInfo(I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/CityManagementActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 173
    invoke-static {p0}, Lcom/haringeymobile/ukweather/utils/SharedPrefsHelper;->getCityIdFromSharedPrefs(Landroid/content/Context;)I

    move-result v0

    .line 174
    .local v0, "lastCityId":I
    if-eq p1, v0, :cond_0

    const/16 v2, 0x2a

    aput-boolean v4, v1, v2

    .line 178
    :goto_0
    const/16 v2, 0x2d

    aput-boolean v4, v1, v2

    return-void

    .line 174
    :cond_0
    const/16 v2, 0x2b

    aput-boolean v4, v1, v2

    .line 175
    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/haringeymobile/ukweather/utils/SharedPrefsHelper;->putCityIdIntoSharedPrefs(Landroid/content/Context;IZ)V

    const/16 v2, 0x2c

    aput-boolean v4, v1, v2

    goto :goto_0
.end method


# virtual methods
.method public dragCity(II)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/CityManagementActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 182
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/haringeymobile/ukweather/database/GeneralDatabaseService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x2e

    aput-boolean v3, v0, v2

    .line 183
    const-string v2, "com.haringeymobile.ukweather.drag_city"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x2f

    aput-boolean v3, v0, v2

    .line 184
    const-string v2, "city order x"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v2, 0x30

    aput-boolean v3, v0, v2

    .line 185
    const-string v2, "city order y"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v2, 0x31

    aput-boolean v3, v0, v2

    .line 186
    invoke-virtual {p0, v1}, Lcom/haringeymobile/ukweather/CityManagementActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 187
    const/16 v1, 0x32

    aput-boolean v3, v0, v1

    return-void
.end method

.method public onCityNameChangeRequested(ILjava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/CityManagementActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 49
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/16 v2, 0xa

    aput-boolean v4, v0, v2

    .line 51
    invoke-direct {p0, p2}, Lcom/haringeymobile/ukweather/CityManagementActivity;->getDialogTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xb

    aput-boolean v4, v0, v3

    .line 52
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/16 v2, 0xc

    aput-boolean v4, v0, v2

    .line 54
    invoke-direct {p0}, Lcom/haringeymobile/ukweather/CityManagementActivity;->getNewCityNameEditText()Landroid/widget/EditText;

    move-result-object v2

    const/16 v3, 0xd

    aput-boolean v4, v0, v3

    .line 55
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const/16 v3, 0xe

    aput-boolean v4, v0, v3

    .line 57
    invoke-direct {p0, p1, p2, v2}, Lcom/haringeymobile/ukweather/CityManagementActivity;->getDialogOnClickListener(ILjava/lang/String;Landroid/widget/EditText;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    const/16 v3, 0xf

    aput-boolean v4, v0, v3

    .line 59
    const v3, 0x104000a

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/16 v2, 0x10

    aput-boolean v4, v0, v2

    .line 61
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 62
    const/16 v1, 0x11

    aput-boolean v4, v0, v1

    return-void
.end method

.method public onCityRecordDeletionConfirmed(I)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/CityManagementActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 152
    invoke-virtual {p0, p1}, Lcom/haringeymobile/ukweather/CityManagementActivity;->removeCityById(I)V

    .line 153
    const/16 v1, 0x24

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onCityRecordDeletionRequested(ILjava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/CityManagementActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 141
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/CityManagementActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 142
    .local v1, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    const-string v3, "delete city dialog"

    const/16 v4, 0x1e

    aput-boolean v5, v2, v4

    .line 143
    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/haringeymobile/ukweather/DeleteCityDialog;

    .line 144
    .local v0, "dialogFragment":Lcom/haringeymobile/ukweather/DeleteCityDialog;
    if-eqz v0, :cond_0

    const/16 v3, 0x1f

    aput-boolean v5, v2, v3

    .line 148
    :goto_0
    const/16 v3, 0x23

    aput-boolean v5, v2, v3

    return-void

    .line 144
    :cond_0
    const/16 v3, 0x20

    aput-boolean v5, v2, v3

    .line 145
    invoke-static {p1, p2}, Lcom/haringeymobile/ukweather/DeleteCityDialog;->newInstance(ILjava/lang/String;)Lcom/haringeymobile/ukweather/DeleteCityDialog;

    move-result-object v0

    const/16 v3, 0x21

    aput-boolean v5, v2, v3

    .line 146
    const-string v3, "delete city dialog"

    invoke-virtual {v0, v1, v3}, Lcom/haringeymobile/ukweather/DeleteCityDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    const/16 v3, 0x22

    aput-boolean v5, v2, v3

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/CityManagementActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 35
    const v1, 0x7f08003f

    invoke-virtual {p0, v1}, Lcom/haringeymobile/ukweather/CityManagementActivity;->setTheme(I)V

    aput-boolean v4, v2, v4

    .line 36
    invoke-super {p0, p1}, Lcom/haringeymobile/ukweather/ThemedActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v1, 0x2

    aput-boolean v4, v2, v1

    .line 37
    const v1, 0x7f03001c

    invoke-virtual {p0, v1}, Lcom/haringeymobile/ukweather/CityManagementActivity;->setContentView(I)V

    const/4 v1, 0x3

    aput-boolean v4, v2, v1

    .line 38
    const v1, 0x7f0c006a

    invoke-virtual {p0, v1}, Lcom/haringeymobile/ukweather/CityManagementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/Toolbar;

    const/4 v3, 0x4

    aput-boolean v4, v2, v3

    .line 39
    invoke-virtual {p0, v1}, Lcom/haringeymobile/ukweather/CityManagementActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    const/4 v3, 0x5

    aput-boolean v4, v2, v3

    .line 40
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/CityManagementActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 41
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    if-nez v0, :cond_0

    const/4 v3, 0x6

    aput-boolean v4, v2, v3

    .line 44
    :goto_0
    const v3, 0x7f02007d

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 45
    const/16 v1, 0x9

    aput-boolean v4, v2, v1

    return-void

    .line 41
    :cond_0
    const/4 v3, 0x7

    aput-boolean v4, v2, v3

    .line 42
    invoke-virtual {v0, v4}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const/16 v3, 0x8

    aput-boolean v4, v2, v3

    goto :goto_0
.end method

.method public removeCityById(I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/CityManagementActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 157
    invoke-direct {p0, p1}, Lcom/haringeymobile/ukweather/CityManagementActivity;->updateLastRequestedCityInfo(I)V

    const/16 v1, 0x25

    aput-boolean v3, v0, v1

    .line 158
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/haringeymobile/ukweather/database/GeneralDatabaseService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x26

    aput-boolean v3, v0, v2

    .line 159
    const-string v2, "com.haringeymobile.ukweather.delete_city_records"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x27

    aput-boolean v3, v0, v2

    .line 160
    const-string v2, "city id"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v2, 0x28

    aput-boolean v3, v0, v2

    .line 161
    invoke-virtual {p0, v1}, Lcom/haringeymobile/ukweather/CityManagementActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 162
    const/16 v1, 0x29

    aput-boolean v3, v0, v1

    return-void
.end method
