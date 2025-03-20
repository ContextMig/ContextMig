.class public Lcom/haringeymobile/ukweather/AddCityFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "AddCityFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haringeymobile/ukweather/AddCityFragment$OnNewCityQueryTextListener;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final MINIMUM_SEARCH_QUERY_STRING_LENGTH:I = 0x3


# instance fields
.field private cityQueryTextListener:Lcom/haringeymobile/ukweather/AddCityFragment$OnNewCityQueryTextListener;

.field private queryEditText:Landroid/widget/EditText;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/AddCityFragment;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x7f09a42d1f8f7942L    # 8.791964205879838E303

    const-string v2, "com/haringeymobile/ukweather/AddCityFragment"

    const/16 v3, 0x19

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/AddCityFragment;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/AddCityFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 20
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$000(Lcom/haringeymobile/ukweather/AddCityFragment;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/AddCityFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 20
    invoke-direct {p0}, Lcom/haringeymobile/ukweather/AddCityFragment;->onNewCityQuerySubmitted()V

    const/16 v1, 0x18

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private onNewCityQuerySubmitted()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/AddCityFragment;->$jacocoInit()[Z

    move-result-object v1

    .line 91
    iget-object v2, p0, Lcom/haringeymobile/ukweather/AddCityFragment;->queryEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    aput-boolean v4, v1, v3

    .line 92
    invoke-direct {p0, v2}, Lcom/haringeymobile/ukweather/AddCityFragment;->preProcessQueryString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "query":Ljava/lang/String;
    const/16 v2, 0x11

    aput-boolean v4, v1, v2

    .line 93
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    const/16 v2, 0x12

    aput-boolean v4, v1, v2

    .line 94
    iget-object v2, p0, Lcom/haringeymobile/ukweather/AddCityFragment;->cityQueryTextListener:Lcom/haringeymobile/ukweather/AddCityFragment$OnNewCityQueryTextListener;

    const v3, 0x7f060043

    invoke-interface {v2, v3}, Lcom/haringeymobile/ukweather/AddCityFragment$OnNewCityQueryTextListener;->showAlertDialog(I)V

    const/16 v2, 0x13

    aput-boolean v4, v1, v2

    .line 98
    :goto_0
    const/16 v2, 0x15

    aput-boolean v4, v1, v2

    return-void

    .line 96
    :cond_0
    iget-object v2, p0, Lcom/haringeymobile/ukweather/AddCityFragment;->cityQueryTextListener:Lcom/haringeymobile/ukweather/AddCityFragment$OnNewCityQueryTextListener;

    invoke-interface {v2, v0}, Lcom/haringeymobile/ukweather/AddCityFragment$OnNewCityQueryTextListener;->onQueryTextSubmit(Ljava/lang/String;)V

    const/16 v2, 0x14

    aput-boolean v4, v1, v2

    goto :goto_0
.end method

.method private preProcessQueryString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/AddCityFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 107
    const-string v1, " "

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\r"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x16

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/AddCityFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 53
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 54
    check-cast p1, Lcom/haringeymobile/ukweather/AddCityFragment$OnNewCityQueryTextListener;

    iput-object p1, p0, Lcom/haringeymobile/ukweather/AddCityFragment;->cityQueryTextListener:Lcom/haringeymobile/ukweather/AddCityFragment$OnNewCityQueryTextListener;

    .line 55
    aput-boolean v1, v0, v1

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/AddCityFragment;->$jacocoInit()[Z

    move-result-object v1

    .line 60
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/AddCityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030020

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const/4 v0, 0x2

    aput-boolean v6, v1, v0

    .line 62
    const v0, 0x7f0c0063

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/haringeymobile/ukweather/AddCityFragment;->queryEditText:Landroid/widget/EditText;

    const/4 v0, 0x3

    aput-boolean v6, v1, v0

    .line 63
    const v0, 0x7f0c0065

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v3, 0x4

    aput-boolean v6, v1, v3

    .line 64
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/AddCityFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3}, Lcom/haringeymobile/ukweather/utils/MiscMethods;->getNoCitiesFoundDialogMessage(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x5

    aput-boolean v6, v1, v0

    .line 66
    const v0, 0x7f0c0064

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const/4 v3, 0x6

    aput-boolean v6, v1, v3

    .line 67
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    const/4 v4, 0x7

    aput-boolean v6, v1, v4

    .line 68
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/AddCityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x7f010005

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    const/16 v4, 0x8

    aput-boolean v6, v1, v4

    .line 69
    iget v3, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    const/16 v3, 0x9

    aput-boolean v6, v1, v3

    .line 70
    new-instance v3, Lcom/haringeymobile/ukweather/AddCityFragment$1;

    invoke-direct {v3, p0}, Lcom/haringeymobile/ukweather/AddCityFragment$1;-><init>(Lcom/haringeymobile/ukweather/AddCityFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0xa

    aput-boolean v6, v1, v0

    .line 79
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/AddCityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/16 v3, 0xb

    aput-boolean v6, v1, v3

    .line 80
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f020083

    const/16 v3, 0xc

    aput-boolean v6, v1, v3

    .line 81
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f06003e

    const/16 v3, 0xd

    aput-boolean v6, v1, v3

    .line 82
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/16 v2, 0xe

    aput-boolean v6, v1, v2

    .line 83
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 79
    const/16 v2, 0xf

    aput-boolean v6, v1, v2

    return-object v0
.end method

.method public onDetach()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/AddCityFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 112
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDetach()V

    .line 113
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/haringeymobile/ukweather/AddCityFragment;->cityQueryTextListener:Lcom/haringeymobile/ukweather/AddCityFragment$OnNewCityQueryTextListener;

    .line 114
    const/16 v1, 0x17

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
