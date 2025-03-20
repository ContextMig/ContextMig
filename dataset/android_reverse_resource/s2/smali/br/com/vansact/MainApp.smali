.class public Lbr/com/vansact/MainApp;
.super Landroid/app/Activity;
.source "MainApp.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private adapter:Lbr/com/vansadapt/ShoppingListCursorAdapter;

.field private headerView:Landroid/view/View;

.field private lvShoppingList:Landroid/widget/ListView;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lbr/com/vansact/MainApp;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x100e25ca07e05f4eL    # -1.7322595164818625E231

    const-string v2, "br/com/vansact/MainApp"

    const/16 v3, 0x45

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lbr/com/vansact/MainApp;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lbr/com/vansact/MainApp;->$jacocoInit()[Z

    move-result-object v0

    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$000(Lbr/com/vansact/MainApp;)V
    .locals 3

    .prologue
    invoke-static {}, Lbr/com/vansact/MainApp;->$jacocoInit()[Z

    move-result-object v0

    .line 36
    invoke-direct {p0}, Lbr/com/vansact/MainApp;->refreshListView()V

    const/16 v1, 0x44

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private addNew()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lbr/com/vansact/MainApp;->$jacocoInit()[Z

    move-result-object v0

    .line 152
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x1f

    aput-boolean v5, v0, v2

    .line 153
    const v2, 0x7f05003f

    invoke-virtual {p0, v2}, Lbr/com/vansact/MainApp;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/16 v2, 0x20

    aput-boolean v5, v0, v2

    .line 154
    const v2, 0x7f050050

    invoke-virtual {p0, v2}, Lbr/com/vansact/MainApp;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/16 v2, 0x21

    aput-boolean v5, v0, v2

    .line 156
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x22

    aput-boolean v5, v0, v3

    .line 157
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const/16 v3, 0x23

    aput-boolean v5, v0, v3

    .line 159
    const v3, 0x104000a

    new-instance v4, Lbr/com/vansact/MainApp$2;

    invoke-direct {v4, p0, v2}, Lbr/com/vansact/MainApp$2;-><init>(Lbr/com/vansact/MainApp;Landroid/widget/EditText;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/16 v2, 0x24

    aput-boolean v5, v0, v2

    .line 173
    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/16 v2, 0x25

    aput-boolean v5, v0, v2

    .line 174
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 175
    const/16 v1, 0x26

    aput-boolean v5, v0, v1

    return-void
.end method

.method private deleteAll()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lbr/com/vansact/MainApp;->$jacocoInit()[Z

    move-result-object v0

    .line 129
    iget-object v1, p0, Lbr/com/vansact/MainApp;->adapter:Lbr/com/vansadapt/ShoppingListCursorAdapter;

    invoke-virtual {v1}, Lbr/com/vansadapt/ShoppingListCursorAdapter;->getCount()I

    move-result v1

    if-gtz v1, :cond_0

    const/16 v1, 0x16

    aput-boolean v4, v0, v1

    .line 149
    :goto_0
    const/16 v1, 0x1e

    aput-boolean v4, v0, v1

    return-void

    .line 129
    :cond_0
    const/16 v1, 0x17

    aput-boolean v4, v0, v1

    .line 130
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x18

    aput-boolean v4, v0, v2

    .line 131
    const v2, 0x7f050021

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/16 v2, 0x19

    aput-boolean v4, v0, v2

    .line 132
    const v2, 0x7f050058

    invoke-virtual {p0, v2}, Lbr/com/vansact/MainApp;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/16 v2, 0x1a

    aput-boolean v4, v0, v2

    .line 133
    const v2, 0x7f05002d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/16 v2, 0x1b

    aput-boolean v4, v0, v2

    .line 134
    const v2, 0x7f05005d

    new-instance v3, Lbr/com/vansact/MainApp$1;

    invoke-direct {v3, p0}, Lbr/com/vansact/MainApp$1;-><init>(Lbr/com/vansact/MainApp;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/16 v2, 0x1c

    aput-boolean v4, v0, v2

    .line 147
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/16 v1, 0x1d

    aput-boolean v4, v0, v1

    goto :goto_0
.end method

.method private refreshListView()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lbr/com/vansact/MainApp;->$jacocoInit()[Z

    move-result-object v1

    .line 178
    iget-object v0, p0, Lbr/com/vansact/MainApp;->adapter:Lbr/com/vansadapt/ShoppingListCursorAdapter;

    invoke-virtual {v0}, Lbr/com/vansadapt/ShoppingListCursorAdapter;->refreshCursorAdapter()V

    const/16 v0, 0x27

    aput-boolean v4, v1, v0

    .line 179
    iget-object v2, p0, Lbr/com/vansact/MainApp;->headerView:Landroid/view/View;

    iget-object v0, p0, Lbr/com/vansact/MainApp;->adapter:Lbr/com/vansadapt/ShoppingListCursorAdapter;

    invoke-virtual {v0}, Lbr/com/vansadapt/ShoppingListCursorAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/16 v3, 0x28

    aput-boolean v4, v1, v3

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 180
    const/16 v0, 0x2a

    aput-boolean v4, v1, v0

    return-void

    .line 179
    :cond_0
    const/16 v0, 0x8

    const/16 v3, 0x29

    aput-boolean v4, v1, v3

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lbr/com/vansact/MainApp;->$jacocoInit()[Z

    move-result-object v0

    .line 207
    iget-object v1, p0, Lbr/com/vansact/MainApp;->adapter:Lbr/com/vansadapt/ShoppingListCursorAdapter;

    invoke-virtual {v1}, Lbr/com/vansadapt/ShoppingListCursorAdapter;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x34

    aput-boolean v2, v0, v1

    .line 211
    :goto_0
    const/16 v1, 0x37

    aput-boolean v2, v0, v1

    return-void

    .line 207
    :cond_0
    const/16 v1, 0x35

    aput-boolean v2, v0, v1

    .line 208
    invoke-direct {p0}, Lbr/com/vansact/MainApp;->addNew()V

    const/16 v1, 0x36

    aput-boolean v2, v0, v1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    invoke-static {}, Lbr/com/vansact/MainApp;->$jacocoInit()[Z

    move-result-object v1

    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    aput-boolean v4, v1, v4

    .line 47
    const v0, 0x7f030019

    invoke-virtual {p0, v0}, Lbr/com/vansact/MainApp;->setContentView(I)V

    const/4 v0, 0x2

    aput-boolean v4, v1, v0

    .line 49
    new-instance v0, Lbr/com/vansadapt/ShoppingListCursorAdapter;

    invoke-direct {v0, p0}, Lbr/com/vansadapt/ShoppingListCursorAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbr/com/vansact/MainApp;->adapter:Lbr/com/vansadapt/ShoppingListCursorAdapter;

    const/4 v0, 0x3

    aput-boolean v4, v1, v0

    .line 50
    const v0, 0x7f0c0053

    invoke-virtual {p0, v0}, Lbr/com/vansact/MainApp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lbr/com/vansact/MainApp;->lvShoppingList:Landroid/widget/ListView;

    aput-boolean v4, v1, v5

    .line 52
    invoke-virtual {p0}, Lbr/com/vansact/MainApp;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f03001d

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbr/com/vansact/MainApp;->headerView:Landroid/view/View;

    const/4 v0, 0x5

    aput-boolean v4, v1, v0

    .line 53
    iget-object v0, p0, Lbr/com/vansact/MainApp;->headerView:Landroid/view/View;

    const v2, 0x7f0c005d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f050031

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    const/4 v0, 0x6

    aput-boolean v4, v1, v0

    .line 54
    iget-object v0, p0, Lbr/com/vansact/MainApp;->headerView:Landroid/view/View;

    const v2, 0x7f0c005e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x7

    aput-boolean v4, v1, v0

    .line 55
    iget-object v0, p0, Lbr/com/vansact/MainApp;->headerView:Landroid/view/View;

    const v2, 0x7f020038

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    const/16 v0, 0x8

    aput-boolean v4, v1, v0

    .line 56
    iget-object v0, p0, Lbr/com/vansact/MainApp;->headerView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x9

    aput-boolean v4, v1, v0

    .line 58
    const v0, 0x7f0c0052

    invoke-virtual {p0, v0}, Lbr/com/vansact/MainApp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lbr/com/vansact/MainApp;->headerView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v0, 0xa

    aput-boolean v4, v1, v0

    .line 60
    iget-object v0, p0, Lbr/com/vansact/MainApp;->lvShoppingList:Landroid/widget/ListView;

    iget-object v2, p0, Lbr/com/vansact/MainApp;->adapter:Lbr/com/vansadapt/ShoppingListCursorAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 63
    const/16 v0, 0xb

    aput-boolean v4, v1, v0

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lbr/com/vansact/MainApp;->$jacocoInit()[Z

    move-result-object v0

    .line 99
    invoke-virtual {p0}, Lbr/com/vansact/MainApp;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f0d0001

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 100
    const/16 v1, 0x10

    aput-boolean v3, v0, v1

    return v3
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .prologue
    invoke-static {}, Lbr/com/vansact/MainApp;->$jacocoInit()[Z

    move-result-object v0

    .line 202
    invoke-direct {p0}, Lbr/com/vansact/MainApp;->refreshListView()V

    .line 203
    const/16 v1, 0x33

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lbr/com/vansact/MainApp;->$jacocoInit()[Z

    move-result-object v0

    .line 184
    iget-object v1, p0, Lbr/com/vansact/MainApp;->lvShoppingList:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/16 v1, 0x2b

    aput-boolean v4, v0, v1

    .line 185
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lbr/com/vansact/AddItemShoppingList;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v2, 0x7f05005f

    invoke-virtual {p0, v2}, Lbr/com/vansact/MainApp;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lbr/com/vansact/MainApp;->adapter:Lbr/com/vansadapt/ShoppingListCursorAdapter;

    invoke-virtual {v3, p3}, Lbr/com/vansadapt/ShoppingListCursorAdapter;->getItem(I)Lbr/com/bean/ShoppingList;

    move-result-object v3

    invoke-virtual {v3}, Lbr/com/bean/ShoppingList;->getId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lbr/com/vansact/MainApp;->startActivity(Landroid/content/Intent;)V

    .line 187
    const/16 v1, 0x2c

    aput-boolean v4, v0, v1

    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lbr/com/vansact/MainApp;->$jacocoInit()[Z

    move-result-object v0

    .line 191
    iget-object v1, p0, Lbr/com/vansact/MainApp;->adapter:Lbr/com/vansadapt/ShoppingListCursorAdapter;

    invoke-virtual {v1, p3}, Lbr/com/vansadapt/ShoppingListCursorAdapter;->getItem(I)Lbr/com/bean/ShoppingList;

    move-result-object v1

    if-nez v1, :cond_0

    const/16 v1, 0x2d

    aput-boolean v3, v0, v1

    .line 197
    :goto_0
    const/16 v1, 0x32

    aput-boolean v3, v0, v1

    return v3

    .line 191
    :cond_0
    const/16 v1, 0x2e

    aput-boolean v3, v0, v1

    .line 192
    new-instance v1, Lbr/com/vansdialog/CustomDialogShoppingListOptions;

    iget-object v2, p0, Lbr/com/vansact/MainApp;->adapter:Lbr/com/vansadapt/ShoppingListCursorAdapter;

    invoke-virtual {v2, p3}, Lbr/com/vansadapt/ShoppingListCursorAdapter;->getItem(I)Lbr/com/bean/ShoppingList;

    move-result-object v2

    invoke-virtual {v2}, Lbr/com/bean/ShoppingList;->getId()I

    move-result v2

    invoke-direct {v1, p0, v2}, Lbr/com/vansdialog/CustomDialogShoppingListOptions;-><init>(Landroid/content/Context;I)V

    const/16 v2, 0x2f

    aput-boolean v3, v0, v2

    .line 193
    invoke-virtual {v1, p0}, Lbr/com/vansdialog/CustomDialogShoppingListOptions;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    const/16 v2, 0x30

    aput-boolean v3, v0, v2

    .line 194
    invoke-virtual {v1}, Lbr/com/vansdialog/CustomDialogShoppingListOptions;->show()V

    const/16 v1, 0x31

    aput-boolean v3, v0, v1

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    invoke-static {}, Lbr/com/vansact/MainApp;->$jacocoInit()[Z

    move-result-object v2

    .line 105
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 124
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    const/16 v3, 0x15

    aput-boolean v0, v2, v3

    move v0, v1

    :goto_0
    return v0

    .line 108
    :pswitch_1
    invoke-direct {p0}, Lbr/com/vansact/MainApp;->addNew()V

    .line 109
    const/16 v1, 0x11

    aput-boolean v0, v2, v1

    goto :goto_0

    .line 112
    :pswitch_2
    invoke-direct {p0}, Lbr/com/vansact/MainApp;->deleteAll()V

    .line 113
    const/16 v1, 0x12

    aput-boolean v0, v2, v1

    goto :goto_0

    .line 116
    :pswitch_3
    invoke-static {p0}, Lbr/com/vansintent/CustomIntentOutside;->UpdateApp(Landroid/content/Context;)V

    .line 117
    const/16 v1, 0x13

    aput-boolean v0, v2, v1

    goto :goto_0

    .line 120
    :pswitch_4
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lbr/com/vansprefs/UserPreferences;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lbr/com/vansact/MainApp;->startActivity(Landroid/content/Intent;)V

    .line 121
    const/16 v1, 0x14

    aput-boolean v0, v2, v1

    goto :goto_0

    .line 105
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c006e
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onPause()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    invoke-static {}, Lbr/com/vansact/MainApp;->$jacocoInit()[Z

    move-result-object v2

    .line 214
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 216
    const-string v1, "jacoco"

    const/16 v3, 0x38

    aput-boolean v9, v2, v3

    .line 219
    const-string v3, "StorageSt"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x39

    aput-boolean v9, v2, v3

    .line 220
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "coverage.exec"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3a

    aput-boolean v9, v2, v4

    .line 221
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x3b

    const/4 v5, 0x1

    :try_start_0
    aput-boolean v5, v2, v3

    .line 223
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    const/16 v3, 0x3c

    const/4 v5, 0x1

    aput-boolean v5, v2, v3

    .line 224
    const-string v3, "com.vladium.emma.rt.RT"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 225
    .local v0, "emmaRTClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "dumpCoverageData"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const/16 v7, 0x3d

    const/4 v8, 0x1

    aput-boolean v8, v2, v7

    .line 226
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/16 v6, 0x3e

    const/4 v7, 0x1

    aput-boolean v7, v2, v6

    .line 225
    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/16 v5, 0x3f

    const/4 v6, 0x1

    aput-boolean v6, v2, v5

    .line 228
    const/4 v5, 0x0

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v4, 0x1

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v4

    const/4 v4, 0x2

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x40

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 229
    const-string v3, "generateCoverageReport: ok"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    const/16 v1, 0x43

    aput-boolean v9, v2, v1

    return-void

    .line 230
    :catch_0
    move-exception v1

    const/16 v3, 0x41

    aput-boolean v9, v2, v3

    .line 231
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Is emma jar on classpath?"

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v1, 0x42

    aput-boolean v9, v2, v1

    throw v3
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lbr/com/vansact/MainApp;->$jacocoInit()[Z

    move-result-object v0

    .line 80
    iget-object v1, p0, Lbr/com/vansact/MainApp;->lvShoppingList:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/16 v1, 0xc

    aput-boolean v2, v0, v1

    .line 81
    iget-object v1, p0, Lbr/com/vansact/MainApp;->lvShoppingList:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    const/16 v1, 0xd

    aput-boolean v2, v0, v1

    .line 83
    invoke-direct {p0}, Lbr/com/vansact/MainApp;->refreshListView()V

    const/16 v1, 0xe

    aput-boolean v2, v0, v1

    .line 84
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 89
    const/16 v1, 0xf

    aput-boolean v2, v0, v1

    return-void
.end method
