.class public Lcom/moonpi/swiftnotes/EditActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "EditActivity.java"

# interfaces
.implements Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private bodyEdit:Landroid/widget/EditText;

.field private bundle:Landroid/os/Bundle;

.field private colorPickerDialog:Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;

.field private colour:Ljava/lang/String;

.field private colourArr:[Ljava/lang/String;

.field private colourArrResId:[I

.field private fontDialog:Landroid/app/AlertDialog;

.field private fontSize:I

.field private fontSizeArr:[I

.field private fontSizeNameArr:[Ljava/lang/String;

.field private hideBody:Ljava/lang/Boolean;

.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field private menuHideBody:Landroid/view/MenuItem;

.field private relativeLayoutEdit:Landroid/widget/RelativeLayout;

.field private saveChangesDialog:Landroid/app/AlertDialog;

.field private titleEdit:Landroid/widget/EditText;

.field private toolbar:Landroid/support/v7/widget/Toolbar;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/moonpi/swiftnotes/EditActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x206b86614cfb05e2L    # 1.642321986398309E-152

    const-string v2, "com/moonpi/swiftnotes/EditActivity"

    const/16 v3, 0x98

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/moonpi/swiftnotes/EditActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/EditActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 38
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 55
    const-string v1, "#FFFFFF"

    iput-object v1, p0, Lcom/moonpi/swiftnotes/EditActivity;->colour:Ljava/lang/String;

    .line 56
    const/16 v1, 0x12

    iput v1, p0, Lcom/moonpi/swiftnotes/EditActivity;->fontSize:I

    aput-boolean v2, v0, v3

    .line 57
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/moonpi/swiftnotes/EditActivity;->hideBody:Ljava/lang/Boolean;

    aput-boolean v2, v0, v2

    return-void
.end method

.method static synthetic access$000(Lcom/moonpi/swiftnotes/EditActivity;)Landroid/widget/EditText;
    .locals 4

    .prologue
    invoke-static {}, Lcom/moonpi/swiftnotes/EditActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/moonpi/swiftnotes/EditActivity;->bodyEdit:Landroid/widget/EditText;

    const/16 v2, 0x8d

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$100(Lcom/moonpi/swiftnotes/EditActivity;)Landroid/view/inputmethod/InputMethodManager;
    .locals 4

    .prologue
    invoke-static {}, Lcom/moonpi/swiftnotes/EditActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/moonpi/swiftnotes/EditActivity;->imm:Landroid/view/inputmethod/InputMethodManager;

    const/16 v2, 0x8e

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$200(Lcom/moonpi/swiftnotes/EditActivity;)[Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcom/moonpi/swiftnotes/EditActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/moonpi/swiftnotes/EditActivity;->colourArr:[Ljava/lang/String;

    const/16 v2, 0x8f

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$300(Lcom/moonpi/swiftnotes/EditActivity;)Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcom/moonpi/swiftnotes/EditActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/moonpi/swiftnotes/EditActivity;->colour:Ljava/lang/String;

    const/16 v2, 0x91

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$302(Lcom/moonpi/swiftnotes/EditActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    invoke-static {}, Lcom/moonpi/swiftnotes/EditActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 38
    iput-object p1, p0, Lcom/moonpi/swiftnotes/EditActivity;->colour:Ljava/lang/String;

    const/16 v1, 0x90

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-object p1
.end method

.method static synthetic access$400(Lcom/moonpi/swiftnotes/EditActivity;)Landroid/widget/RelativeLayout;
    .locals 4

    .prologue
    invoke-static {}, Lcom/moonpi/swiftnotes/EditActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/moonpi/swiftnotes/EditActivity;->relativeLayoutEdit:Landroid/widget/RelativeLayout;

    const/16 v2, 0x92

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$500(Lcom/moonpi/swiftnotes/EditActivity;)I
    .locals 4

    .prologue
    invoke-static {}, Lcom/moonpi/swiftnotes/EditActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 38
    iget v1, p0, Lcom/moonpi/swiftnotes/EditActivity;->fontSize:I

    const/16 v2, 0x95

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method static synthetic access$502(Lcom/moonpi/swiftnotes/EditActivity;I)I
    .locals 3

    .prologue
    invoke-static {}, Lcom/moonpi/swiftnotes/EditActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 38
    iput p1, p0, Lcom/moonpi/swiftnotes/EditActivity;->fontSize:I

    const/16 v1, 0x93

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return p1
.end method

.method static synthetic access$600(Lcom/moonpi/swiftnotes/EditActivity;)[I
    .locals 4

    .prologue
    invoke-static {}, Lcom/moonpi/swiftnotes/EditActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/moonpi/swiftnotes/EditActivity;->fontSizeArr:[I

    const/16 v2, 0x94

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$700(Lcom/moonpi/swiftnotes/EditActivity;)Landroid/os/Bundle;
    .locals 4

    .prologue
    invoke-static {}, Lcom/moonpi/swiftnotes/EditActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/moonpi/swiftnotes/EditActivity;->bundle:Landroid/os/Bundle;

    const/16 v2, 0x96

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$800(Lcom/moonpi/swiftnotes/EditActivity;)Landroid/widget/EditText;
    .locals 4

    .prologue
    invoke-static {}, Lcom/moonpi/swiftnotes/EditActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/moonpi/swiftnotes/EditActivity;->titleEdit:Landroid/widget/EditText;

    const/16 v2, 0x97

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/EditActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 272
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v3, 0x3

    if-lt v0, v3, :cond_0

    const/16 v0, 0x3f

    aput-boolean v1, v2, v0

    move v0, v1

    :goto_0
    const/16 v3, 0x41

    aput-boolean v1, v2, v3

    return v0

    :cond_0
    const/4 v0, 0x0

    const/16 v3, 0x40

    aput-boolean v1, v2, v3

    goto :goto_0
.end method


# virtual methods
.method protected initDialogs(Landroid/content/Context;)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/EditActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 185
    const v3, 0x7f050026

    iget-object v4, p0, Lcom/moonpi/swiftnotes/EditActivity;->colourArrResId:[I

    iget-object v0, p0, Lcom/moonpi/swiftnotes/EditActivity;->colour:Ljava/lang/String;

    const/16 v5, 0x2f

    aput-boolean v1, v2, v5

    .line 186
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x3

    const/16 v0, 0x30

    aput-boolean v1, v2, v0

    .line 187
    invoke-static {p0}, Lcom/moonpi/swiftnotes/EditActivity;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x31

    aput-boolean v1, v2, v0

    move v0, v1

    .line 185
    :goto_0
    invoke-static {v3, v4, v5, v6, v0}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->newInstance(I[IIII)Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/moonpi/swiftnotes/EditActivity;->colorPickerDialog:Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;

    const/16 v0, 0x33

    aput-boolean v1, v2, v0

    .line 190
    iget-object v0, p0, Lcom/moonpi/swiftnotes/EditActivity;->colorPickerDialog:Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;

    new-instance v3, Lcom/moonpi/swiftnotes/EditActivity$3;

    invoke-direct {v3, p0}, Lcom/moonpi/swiftnotes/EditActivity$3;-><init>(Lcom/moonpi/swiftnotes/EditActivity;)V

    invoke-virtual {v0, v3}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->setOnColorSelectedListener(Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerSwatch$OnColorSelectedListener;)V

    const/16 v0, 0x34

    aput-boolean v1, v2, v0

    .line 208
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f050025

    const/16 v4, 0x35

    aput-boolean v1, v2, v4

    .line 209
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/moonpi/swiftnotes/EditActivity;->fontSizeNameArr:[Ljava/lang/String;

    new-instance v4, Lcom/moonpi/swiftnotes/EditActivity$5;

    invoke-direct {v4, p0}, Lcom/moonpi/swiftnotes/EditActivity$5;-><init>(Lcom/moonpi/swiftnotes/EditActivity;)V

    const/16 v5, 0x36

    aput-boolean v1, v2, v5

    .line 210
    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v3, 0x1040000

    new-instance v4, Lcom/moonpi/swiftnotes/EditActivity$4;

    invoke-direct {v4, p0}, Lcom/moonpi/swiftnotes/EditActivity$4;-><init>(Lcom/moonpi/swiftnotes/EditActivity;)V

    const/16 v5, 0x37

    aput-boolean v1, v2, v5

    .line 218
    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/16 v3, 0x38

    aput-boolean v1, v2, v3

    .line 224
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/moonpi/swiftnotes/EditActivity;->fontDialog:Landroid/app/AlertDialog;

    const/16 v0, 0x39

    aput-boolean v1, v2, v0

    .line 228
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f05002b

    const/16 v4, 0x3a

    aput-boolean v1, v2, v4

    .line 229
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f05003e

    new-instance v4, Lcom/moonpi/swiftnotes/EditActivity$7;

    invoke-direct {v4, p0}, Lcom/moonpi/swiftnotes/EditActivity$7;-><init>(Lcom/moonpi/swiftnotes/EditActivity;)V

    const/16 v5, 0x3b

    aput-boolean v1, v2, v5

    .line 230
    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f05002e

    new-instance v4, Lcom/moonpi/swiftnotes/EditActivity$6;

    invoke-direct {v4, p0}, Lcom/moonpi/swiftnotes/EditActivity$6;-><init>(Lcom/moonpi/swiftnotes/EditActivity;)V

    const/16 v5, 0x3c

    aput-boolean v1, v2, v5

    .line 242
    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/16 v3, 0x3d

    aput-boolean v1, v2, v3

    .line 262
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/moonpi/swiftnotes/EditActivity;->saveChangesDialog:Landroid/app/AlertDialog;

    .line 263
    const/16 v0, 0x3e

    aput-boolean v1, v2, v0

    return-void

    .line 187
    :cond_0
    const/4 v0, 0x2

    const/16 v7, 0x32

    aput-boolean v1, v2, v7

    goto/16 :goto_0
.end method

.method protected initToolbar()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/EditActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 154
    iget-object v2, p0, Lcom/moonpi/swiftnotes/EditActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v2, 0x26

    aput-boolean v4, v1, v2

    .line 157
    iget-object v2, p0, Lcom/moonpi/swiftnotes/EditActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    const v3, 0x7f020013

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    const/16 v2, 0x27

    aput-boolean v4, v1, v2

    .line 158
    iget-object v2, p0, Lcom/moonpi/swiftnotes/EditActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    new-instance v3, Lcom/moonpi/swiftnotes/EditActivity$2;

    invoke-direct {v3, p0}, Lcom/moonpi/swiftnotes/EditActivity$2;-><init>(Lcom/moonpi/swiftnotes/EditActivity;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v2, 0x28

    aput-boolean v4, v1, v2

    .line 166
    iget-object v2, p0, Lcom/moonpi/swiftnotes/EditActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    const v3, 0x7f0d0001

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->inflateMenu(I)V

    const/16 v2, 0x29

    aput-boolean v4, v1, v2

    .line 169
    iget-object v2, p0, Lcom/moonpi/swiftnotes/EditActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v2, p0}, Landroid/support/v7/widget/Toolbar;->setOnMenuItemClickListener(Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;)V

    const/16 v2, 0x2a

    aput-boolean v4, v1, v2

    .line 171
    iget-object v2, p0, Lcom/moonpi/swiftnotes/EditActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v2}, Landroid/support/v7/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 173
    .local v0, "menu":Landroid/view/Menu;
    if-nez v0, :cond_0

    const/16 v2, 0x2b

    aput-boolean v4, v1, v2

    .line 175
    :goto_0
    const/16 v2, 0x2e

    aput-boolean v4, v1, v2

    return-void

    .line 173
    :cond_0
    const/16 v2, 0x2c

    aput-boolean v4, v1, v2

    .line 174
    const v2, 0x7f0b0081

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/moonpi/swiftnotes/EditActivity;->menuHideBody:Landroid/view/MenuItem;

    const/16 v2, 0x2d

    aput-boolean v4, v1, v2

    goto :goto_0
.end method

.method protected isEmpty(Landroid/widget/EditText;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/EditActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 401
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x73

    aput-boolean v1, v2, v0

    move v0, v1

    :goto_0
    const/16 v3, 0x75

    aput-boolean v1, v2, v3

    return v0

    :cond_0
    const/4 v0, 0x0

    const/16 v3, 0x74

    aput-boolean v1, v2, v3

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/EditActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 360
    iget-object v1, p0, Lcom/moonpi/swiftnotes/EditActivity;->bundle:Landroid/os/Bundle;

    const-string v2, "requestCode"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const v2, 0xea60

    if-ne v1, v2, :cond_0

    const/16 v1, 0x60

    aput-boolean v5, v0, v1

    .line 361
    iget-object v1, p0, Lcom/moonpi/swiftnotes/EditActivity;->saveChangesDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    const/16 v1, 0x61

    aput-boolean v5, v0, v1

    .line 392
    :goto_0
    const/16 v1, 0x72

    aput-boolean v5, v0, v1

    return-void

    .line 370
    :cond_0
    iget-object v1, p0, Lcom/moonpi/swiftnotes/EditActivity;->titleEdit:Landroid/widget/EditText;

    invoke-virtual {p0, v1}, Lcom/moonpi/swiftnotes/EditActivity;->isEmpty(Landroid/widget/EditText;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x62

    aput-boolean v5, v0, v1

    .line 371
    :goto_1
    iget-object v1, p0, Lcom/moonpi/swiftnotes/EditActivity;->titleEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/moonpi/swiftnotes/EditActivity;->bundle:Landroid/os/Bundle;

    const-string v3, "title"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x64

    aput-boolean v5, v0, v1

    .line 377
    :goto_2
    invoke-virtual {p0}, Lcom/moonpi/swiftnotes/EditActivity;->saveChanges()V

    const/16 v1, 0x6d

    aput-boolean v5, v0, v1

    goto :goto_0

    .line 370
    :cond_1
    iget-object v1, p0, Lcom/moonpi/swiftnotes/EditActivity;->bodyEdit:Landroid/widget/EditText;

    invoke-virtual {p0, v1}, Lcom/moonpi/swiftnotes/EditActivity;->isEmpty(Landroid/widget/EditText;)Z

    move-result v1

    if-nez v1, :cond_7

    const/16 v1, 0x63

    aput-boolean v5, v0, v1

    goto :goto_1

    .line 371
    :cond_2
    iget-object v1, p0, Lcom/moonpi/swiftnotes/EditActivity;->bodyEdit:Landroid/widget/EditText;

    const/16 v2, 0x65

    aput-boolean v5, v0, v2

    .line 372
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/moonpi/swiftnotes/EditActivity;->bundle:Landroid/os/Bundle;

    const-string v3, "body"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const/16 v1, 0x66

    aput-boolean v5, v0, v1

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/moonpi/swiftnotes/EditActivity;->colour:Ljava/lang/String;

    iget-object v2, p0, Lcom/moonpi/swiftnotes/EditActivity;->bundle:Landroid/os/Bundle;

    const-string v3, "colour"

    const/16 v4, 0x67

    aput-boolean v5, v0, v4

    .line 373
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const/16 v1, 0x68

    aput-boolean v5, v0, v1

    goto :goto_2

    :cond_4
    iget v1, p0, Lcom/moonpi/swiftnotes/EditActivity;->fontSize:I

    iget-object v2, p0, Lcom/moonpi/swiftnotes/EditActivity;->bundle:Landroid/os/Bundle;

    const-string v3, "fontSize"

    const/16 v4, 0x69

    aput-boolean v5, v0, v4

    .line 374
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_5

    const/16 v1, 0x6a

    aput-boolean v5, v0, v1

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/moonpi/swiftnotes/EditActivity;->hideBody:Ljava/lang/Boolean;

    const/16 v2, 0x6b

    aput-boolean v5, v0, v2

    .line 375
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lcom/moonpi/swiftnotes/EditActivity;->bundle:Landroid/os/Bundle;

    const-string v3, "hideBody"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eq v1, v2, :cond_6

    const/16 v1, 0x6c

    aput-boolean v5, v0, v1

    goto :goto_2

    .line 381
    :cond_6
    iget-object v1, p0, Lcom/moonpi/swiftnotes/EditActivity;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/moonpi/swiftnotes/EditActivity;->titleEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    const/16 v1, 0x6e

    aput-boolean v5, v0, v1

    .line 383
    invoke-virtual {p0}, Lcom/moonpi/swiftnotes/EditActivity;->finish()V

    const/16 v1, 0x6f

    aput-boolean v5, v0, v1

    .line 384
    invoke-virtual {p0, v6, v6}, Lcom/moonpi/swiftnotes/EditActivity;->overridePendingTransition(II)V

    const/16 v1, 0x70

    aput-boolean v5, v0, v1

    goto/16 :goto_0

    .line 390
    :cond_7
    invoke-virtual {p0}, Lcom/moonpi/swiftnotes/EditActivity;->toastEditTextCannotBeEmpty()V

    const/16 v1, 0x71

    aput-boolean v5, v0, v1

    goto/16 :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/EditActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 436
    iget-object v1, p0, Lcom/moonpi/swiftnotes/EditActivity;->colorPickerDialog:Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;

    if-nez v1, :cond_0

    const/16 v1, 0x80

    aput-boolean v2, v0, v1

    .line 439
    :goto_0
    iget-object v1, p0, Lcom/moonpi/swiftnotes/EditActivity;->fontDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_2

    const/16 v1, 0x84

    aput-boolean v2, v0, v1

    .line 442
    :goto_1
    iget-object v1, p0, Lcom/moonpi/swiftnotes/EditActivity;->saveChangesDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_4

    const/16 v1, 0x88

    aput-boolean v2, v0, v1

    .line 445
    :goto_2
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 446
    const/16 v1, 0x8c

    aput-boolean v2, v0, v1

    return-void

    .line 436
    :cond_0
    iget-object v1, p0, Lcom/moonpi/swiftnotes/EditActivity;->colorPickerDialog:Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;

    invoke-virtual {v1}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->isDialogShowing()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x81

    aput-boolean v2, v0, v1

    goto :goto_0

    :cond_1
    const/16 v1, 0x82

    aput-boolean v2, v0, v1

    .line 437
    iget-object v1, p0, Lcom/moonpi/swiftnotes/EditActivity;->colorPickerDialog:Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;

    invoke-virtual {v1}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->dismiss()V

    const/16 v1, 0x83

    aput-boolean v2, v0, v1

    goto :goto_0

    .line 439
    :cond_2
    iget-object v1, p0, Lcom/moonpi/swiftnotes/EditActivity;->fontDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_3

    const/16 v1, 0x85

    aput-boolean v2, v0, v1

    goto :goto_1

    :cond_3
    const/16 v1, 0x86

    aput-boolean v2, v0, v1

    .line 440
    iget-object v1, p0, Lcom/moonpi/swiftnotes/EditActivity;->fontDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    const/16 v1, 0x87

    aput-boolean v2, v0, v1

    goto :goto_1

    .line 442
    :cond_4
    iget-object v1, p0, Lcom/moonpi/swiftnotes/EditActivity;->saveChangesDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_5

    const/16 v1, 0x89

    aput-boolean v2, v0, v1

    goto :goto_2

    :cond_5
    const/16 v1, 0x8a

    aput-boolean v2, v0, v1

    .line 443
    iget-object v1, p0, Lcom/moonpi/swiftnotes/EditActivity;->saveChangesDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    const/16 v1, 0x8b

    aput-boolean v2, v0, v1

    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const/16 v8, 0xa

    const/4 v7, 0x3

    const/4 v3, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/EditActivity;->$jacocoInit()[Z

    move-result-object v4

    .line 65
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_0

    aput-boolean v5, v4, v6

    .line 69
    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Lcom/moonpi/swiftnotes/EditActivity;->setRequestedOrientation(I)V

    aput-boolean v5, v4, v7

    .line 76
    :goto_0
    invoke-virtual {p0}, Lcom/moonpi/swiftnotes/EditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/moonpi/swiftnotes/EditActivity;->colourArr:[Ljava/lang/String;

    .line 78
    iget-object v1, p0, Lcom/moonpi/swiftnotes/EditActivity;->colourArr:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/moonpi/swiftnotes/EditActivity;->colourArrResId:[I

    .line 79
    const/4 v1, 0x5

    aput-boolean v5, v4, v1

    move v0, v3

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/moonpi/swiftnotes/EditActivity;->colourArr:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    const/4 v1, 0x6

    aput-boolean v5, v4, v1

    .line 80
    iget-object v1, p0, Lcom/moonpi/swiftnotes/EditActivity;->colourArrResId:[I

    iget-object v2, p0, Lcom/moonpi/swiftnotes/EditActivity;->colourArr:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v0

    .line 79
    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x7

    aput-boolean v5, v4, v1

    goto :goto_1

    .line 73
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p0, v8}, Lcom/moonpi/swiftnotes/EditActivity;->setRequestedOrientation(I)V

    const/4 v1, 0x4

    aput-boolean v5, v4, v1

    goto :goto_0

    .line 82
    .restart local v0    # "i":I
    :cond_1
    new-array v1, v7, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/moonpi/swiftnotes/EditActivity;->fontSizeArr:[I

    const/16 v1, 0x8

    aput-boolean v5, v4, v1

    .line 83
    invoke-virtual {p0}, Lcom/moonpi/swiftnotes/EditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/moonpi/swiftnotes/EditActivity;->fontSizeNameArr:[Ljava/lang/String;

    const/16 v1, 0x9

    aput-boolean v5, v4, v1

    .line 85
    const v1, 0x7f03001b

    invoke-virtual {p0, v1}, Lcom/moonpi/swiftnotes/EditActivity;->setContentView(I)V

    aput-boolean v5, v4, v8

    .line 88
    const v1, 0x7f0b0057

    invoke-virtual {p0, v1}, Lcom/moonpi/swiftnotes/EditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/Toolbar;

    iput-object v1, p0, Lcom/moonpi/swiftnotes/EditActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    const/16 v1, 0xb

    aput-boolean v5, v4, v1

    .line 89
    const v1, 0x7f0b0058

    invoke-virtual {p0, v1}, Lcom/moonpi/swiftnotes/EditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/moonpi/swiftnotes/EditActivity;->titleEdit:Landroid/widget/EditText;

    const/16 v1, 0xc

    aput-boolean v5, v4, v1

    .line 90
    const v1, 0x7f0b0059

    invoke-virtual {p0, v1}, Lcom/moonpi/swiftnotes/EditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/moonpi/swiftnotes/EditActivity;->bodyEdit:Landroid/widget/EditText;

    const/16 v1, 0xd

    aput-boolean v5, v4, v1

    .line 91
    const v1, 0x7f0b0056

    invoke-virtual {p0, v1}, Lcom/moonpi/swiftnotes/EditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/moonpi/swiftnotes/EditActivity;->relativeLayoutEdit:Landroid/widget/RelativeLayout;

    const/16 v1, 0xe

    aput-boolean v5, v4, v1

    .line 92
    const v1, 0x7f0b0033

    invoke-virtual {p0, v1}, Lcom/moonpi/swiftnotes/EditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    const/16 v2, 0xf

    aput-boolean v5, v4, v2

    .line 94
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/moonpi/swiftnotes/EditActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iput-object v2, p0, Lcom/moonpi/swiftnotes/EditActivity;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 96
    iget-object v2, p0, Lcom/moonpi/swiftnotes/EditActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-nez v2, :cond_2

    const/16 v2, 0x10

    aput-boolean v5, v4, v2

    .line 100
    :goto_2
    new-instance v2, Lcom/moonpi/swiftnotes/EditActivity$1;

    invoke-direct {v2, p0}, Lcom/moonpi/swiftnotes/EditActivity$1;-><init>(Lcom/moonpi/swiftnotes/EditActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/16 v1, 0x13

    aput-boolean v5, v4, v1

    .line 118
    invoke-virtual {p0}, Lcom/moonpi/swiftnotes/EditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/moonpi/swiftnotes/EditActivity;->bundle:Landroid/os/Bundle;

    .line 120
    iget-object v1, p0, Lcom/moonpi/swiftnotes/EditActivity;->bundle:Landroid/os/Bundle;

    if-nez v1, :cond_3

    const/16 v1, 0x14

    aput-boolean v5, v4, v1

    .line 145
    :goto_3
    invoke-virtual {p0, p0}, Lcom/moonpi/swiftnotes/EditActivity;->initDialogs(Landroid/content/Context;)V

    .line 146
    const/16 v1, 0x25

    aput-boolean v5, v4, v1

    return-void

    .line 96
    :cond_2
    const/16 v2, 0x11

    aput-boolean v5, v4, v2

    .line 97
    invoke-virtual {p0}, Lcom/moonpi/swiftnotes/EditActivity;->initToolbar()V

    const/16 v2, 0x12

    aput-boolean v5, v4, v2

    goto :goto_2

    .line 120
    :cond_3
    const/16 v1, 0x15

    aput-boolean v5, v4, v1

    .line 122
    iget-object v1, p0, Lcom/moonpi/swiftnotes/EditActivity;->bundle:Landroid/os/Bundle;

    const-string v2, "requestCode"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const v2, 0xea60

    if-eq v1, v2, :cond_5

    const/16 v1, 0x16

    aput-boolean v5, v4, v1

    .line 123
    iget-object v1, p0, Lcom/moonpi/swiftnotes/EditActivity;->bundle:Landroid/os/Bundle;

    const-string v2, "colour"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/moonpi/swiftnotes/EditActivity;->colour:Ljava/lang/String;

    const/16 v1, 0x17

    aput-boolean v5, v4, v1

    .line 124
    iget-object v1, p0, Lcom/moonpi/swiftnotes/EditActivity;->bundle:Landroid/os/Bundle;

    const-string v2, "fontSize"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/moonpi/swiftnotes/EditActivity;->fontSize:I

    const/16 v1, 0x18

    aput-boolean v5, v4, v1

    .line 125
    iget-object v1, p0, Lcom/moonpi/swiftnotes/EditActivity;->bundle:Landroid/os/Bundle;

    const-string v2, "hideBody"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/moonpi/swiftnotes/EditActivity;->hideBody:Ljava/lang/Boolean;

    const/16 v1, 0x19

    aput-boolean v5, v4, v1

    .line 127
    iget-object v1, p0, Lcom/moonpi/swiftnotes/EditActivity;->titleEdit:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/moonpi/swiftnotes/EditActivity;->bundle:Landroid/os/Bundle;

    const-string v3, "title"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x1a

    aput-boolean v5, v4, v1

    .line 128
    iget-object v1, p0, Lcom/moonpi/swiftnotes/EditActivity;->bodyEdit:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/moonpi/swiftnotes/EditActivity;->bundle:Landroid/os/Bundle;

    const-string v3, "body"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x1b

    aput-boolean v5, v4, v1

    .line 129
    iget-object v1, p0, Lcom/moonpi/swiftnotes/EditActivity;->bodyEdit:Landroid/widget/EditText;

    iget v2, p0, Lcom/moonpi/swiftnotes/EditActivity;->fontSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v6, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    const/16 v1, 0x1c

    aput-boolean v5, v4, v1

    .line 131
    iget-object v1, p0, Lcom/moonpi/swiftnotes/EditActivity;->hideBody:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_4

    const/16 v1, 0x1d

    aput-boolean v5, v4, v1

    .line 142
    :goto_4
    iget-object v1, p0, Lcom/moonpi/swiftnotes/EditActivity;->relativeLayoutEdit:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/moonpi/swiftnotes/EditActivity;->colour:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    const/16 v1, 0x24

    aput-boolean v5, v4, v1

    goto/16 :goto_3

    .line 131
    :cond_4
    const/16 v1, 0x1e

    aput-boolean v5, v4, v1

    .line 132
    iget-object v1, p0, Lcom/moonpi/swiftnotes/EditActivity;->menuHideBody:Landroid/view/MenuItem;

    const v2, 0x7f05001e

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    const/16 v1, 0x1f

    aput-boolean v5, v4, v1

    goto :goto_4

    .line 136
    :cond_5
    iget-object v1, p0, Lcom/moonpi/swiftnotes/EditActivity;->bundle:Landroid/os/Bundle;

    const-string v2, "requestCode"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const v2, 0xea60

    if-eq v1, v2, :cond_6

    const/16 v1, 0x20

    aput-boolean v5, v4, v1

    goto :goto_4

    :cond_6
    const/16 v1, 0x21

    aput-boolean v5, v4, v1

    .line 137
    iget-object v1, p0, Lcom/moonpi/swiftnotes/EditActivity;->titleEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    const/16 v1, 0x22

    aput-boolean v5, v4, v1

    .line 138
    iget-object v1, p0, Lcom/moonpi/swiftnotes/EditActivity;->imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1, v6, v3}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    const/16 v1, 0x23

    aput-boolean v5, v4, v1

    goto :goto_4

    .line 82
    :array_0
    .array-data 4
        0xe
        0x12
        0x16
    .end array-data
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/EditActivity;->$jacocoInit()[Z

    move-result-object v3

    .line 284
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 287
    .local v0, "id":I
    const v4, 0x7f0b007f

    if-ne v0, v4, :cond_0

    const/16 v2, 0x42

    aput-boolean v1, v3, v2

    .line 288
    iget-object v2, p0, Lcom/moonpi/swiftnotes/EditActivity;->colorPickerDialog:Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;

    invoke-virtual {p0}, Lcom/moonpi/swiftnotes/EditActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "colourPicker"

    invoke-virtual {v2, v4, v5}, Lcom/moonpi/swiftnotes/ColorPicker/ColorPickerDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 289
    const/16 v2, 0x43

    aput-boolean v1, v3, v2

    .line 327
    :goto_0
    return v1

    .line 293
    :cond_0
    const v4, 0x7f0b0080

    if-ne v0, v4, :cond_1

    const/16 v2, 0x44

    aput-boolean v1, v3, v2

    .line 294
    iget-object v2, p0, Lcom/moonpi/swiftnotes/EditActivity;->fontDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 295
    const/16 v2, 0x45

    aput-boolean v1, v3, v2

    goto :goto_0

    .line 299
    :cond_1
    const v4, 0x7f0b0081

    if-ne v0, v4, :cond_3

    const/16 v4, 0x46

    aput-boolean v1, v3, v4

    .line 301
    iget-object v4, p0, Lcom/moonpi/swiftnotes/EditActivity;->hideBody:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2

    const/16 v4, 0x47

    aput-boolean v1, v3, v4

    .line 302
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/moonpi/swiftnotes/EditActivity;->hideBody:Ljava/lang/Boolean;

    const/16 v4, 0x48

    aput-boolean v1, v3, v4

    .line 303
    iget-object v4, p0, Lcom/moonpi/swiftnotes/EditActivity;->menuHideBody:Landroid/view/MenuItem;

    const v5, 0x7f05001e

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    const/16 v4, 0x49

    aput-boolean v1, v3, v4

    .line 306
    invoke-virtual {p0}, Lcom/moonpi/swiftnotes/EditActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x4a

    aput-boolean v1, v3, v5

    .line 307
    invoke-virtual {p0}, Lcom/moonpi/swiftnotes/EditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f050039

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x4b

    aput-boolean v1, v3, v6

    .line 306
    invoke-static {v4, v5, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    const/16 v4, 0x4c

    aput-boolean v1, v3, v4

    .line 309
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 310
    const/16 v2, 0x4d

    aput-boolean v1, v3, v2

    .line 324
    :goto_1
    const/16 v2, 0x54

    aput-boolean v1, v3, v2

    goto :goto_0

    .line 314
    :cond_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/moonpi/swiftnotes/EditActivity;->hideBody:Ljava/lang/Boolean;

    const/16 v4, 0x4e

    aput-boolean v1, v3, v4

    .line 315
    iget-object v4, p0, Lcom/moonpi/swiftnotes/EditActivity;->menuHideBody:Landroid/view/MenuItem;

    const v5, 0x7f050019

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    const/16 v4, 0x4f

    aput-boolean v1, v3, v4

    .line 318
    invoke-virtual {p0}, Lcom/moonpi/swiftnotes/EditActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x50

    aput-boolean v1, v3, v5

    .line 319
    invoke-virtual {p0}, Lcom/moonpi/swiftnotes/EditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f05003a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x51

    aput-boolean v1, v3, v6

    .line 318
    invoke-static {v4, v5, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    const/16 v4, 0x52

    aput-boolean v1, v3, v4

    .line 321
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    const/16 v2, 0x53

    aput-boolean v1, v3, v2

    goto :goto_1

    .line 327
    :cond_3
    const/16 v4, 0x55

    aput-boolean v1, v3, v4

    move v1, v2

    goto/16 :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/EditActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 421
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onWindowFocusChanged(Z)V

    .line 423
    if-eqz p1, :cond_0

    const/16 v1, 0x7a

    aput-boolean v4, v0, v1

    .line 426
    :goto_0
    const/16 v1, 0x7f

    aput-boolean v4, v0, v1

    return-void

    .line 424
    :cond_0
    iget-object v1, p0, Lcom/moonpi/swiftnotes/EditActivity;->imm:Landroid/view/inputmethod/InputMethodManager;

    if-nez v1, :cond_1

    const/16 v1, 0x7b

    aput-boolean v4, v0, v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/moonpi/swiftnotes/EditActivity;->titleEdit:Landroid/widget/EditText;

    if-nez v1, :cond_2

    const/16 v1, 0x7c

    aput-boolean v4, v0, v1

    goto :goto_0

    :cond_2
    const/16 v1, 0x7d

    aput-boolean v4, v0, v1

    .line 425
    iget-object v1, p0, Lcom/moonpi/swiftnotes/EditActivity;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/moonpi/swiftnotes/EditActivity;->titleEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    const/16 v1, 0x7e

    aput-boolean v4, v0, v1

    goto :goto_0
.end method

.method protected saveChanges()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/EditActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 336
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/16 v2, 0x56

    aput-boolean v4, v0, v2

    .line 339
    const-string v2, "title"

    iget-object v3, p0, Lcom/moonpi/swiftnotes/EditActivity;->titleEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x57

    aput-boolean v4, v0, v2

    .line 340
    const-string v2, "body"

    iget-object v3, p0, Lcom/moonpi/swiftnotes/EditActivity;->bodyEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x58

    aput-boolean v4, v0, v2

    .line 341
    const-string v2, "colour"

    iget-object v3, p0, Lcom/moonpi/swiftnotes/EditActivity;->colour:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x59

    aput-boolean v4, v0, v2

    .line 342
    const-string v2, "fontSize"

    iget v3, p0, Lcom/moonpi/swiftnotes/EditActivity;->fontSize:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v2, 0x5a

    aput-boolean v4, v0, v2

    .line 343
    const-string v2, "hideBody"

    iget-object v3, p0, Lcom/moonpi/swiftnotes/EditActivity;->hideBody:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/16 v2, 0x5b

    aput-boolean v4, v0, v2

    .line 345
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/moonpi/swiftnotes/EditActivity;->setResult(ILandroid/content/Intent;)V

    const/16 v1, 0x5c

    aput-boolean v4, v0, v1

    .line 347
    iget-object v1, p0, Lcom/moonpi/swiftnotes/EditActivity;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/moonpi/swiftnotes/EditActivity;->titleEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    const/16 v1, 0x5d

    aput-boolean v4, v0, v1

    .line 349
    invoke-virtual {p0}, Lcom/moonpi/swiftnotes/EditActivity;->finish()V

    const/16 v1, 0x5e

    aput-boolean v4, v0, v1

    .line 350
    invoke-virtual {p0, v5, v5}, Lcom/moonpi/swiftnotes/EditActivity;->overridePendingTransition(II)V

    .line 351
    const/16 v1, 0x5f

    aput-boolean v4, v0, v1

    return-void
.end method

.method protected toastEditTextCannotBeEmpty()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/EditActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 408
    invoke-virtual {p0}, Lcom/moonpi/swiftnotes/EditActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x76

    aput-boolean v4, v0, v2

    .line 409
    invoke-virtual {p0}, Lcom/moonpi/swiftnotes/EditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050036

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x77

    aput-boolean v4, v0, v3

    .line 408
    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    const/16 v2, 0x78

    aput-boolean v4, v0, v2

    .line 411
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 412
    const/16 v1, 0x79

    aput-boolean v4, v0, v1

    return-void
.end method
