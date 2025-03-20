.class public Lchan/android/app/pocketnote/MainActivity;
.super Lcom/actionbarsherlock/app/SherlockFragmentActivity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lchan/android/app/pocketnote/MainActivity$DrawerItemClickListener;,
        Lchan/android/app/pocketnote/MainActivity$NavigationDrawerItemConstants;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final INTENT_CHOOSE_PHOTO:I = 0x1

.field private static final INTENT_TAKE_PHOTO:I

.field private static final PHOTO_ACTIONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$Item;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private DRAWER_ITEMS:[Lchan/android/app/pocketnote/util/view/NavigationDrawerItem;

.field private drawerContainer:Landroid/widget/LinearLayout;

.field private drawerLayout:Landroid/support/v4/widget/DrawerLayout;

.field private drawerList:Landroid/widget/ListView;

.field private drawerTitle:Ljava/lang/CharSequence;

.field private drawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

.field private fragIndex:I

.field private fragmentCalendar:Landroid/support/v4/app/Fragment;

.field private fragmentNote:Landroid/support/v4/app/Fragment;

.field private fragmentSettings:Landroid/support/v4/app/Fragment;

.field private fragmentTrash:Landroid/support/v4/app/Fragment;

.field private fragments:[Landroid/support/v4/app/Fragment;

.field private imageUri:Landroid/net/Uri;

.field private photoImageView:Lchan/android/app/pocketnote/util/view/CircularImageView;

.field private title:Ljava/lang/CharSequence;

.field private username:Landroid/widget/TextView;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/MainActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x3343df9722b89046L    # -4.5197703761686303E61

    const-string v2, "chan/android/app/pocketnote/MainActivity"

    const/16 v3, 0x84

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/MainActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 49
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lchan/android/app/pocketnote/MainActivity;->PHOTO_ACTIONS:Ljava/util/List;

    const/16 v1, 0x81

    aput-boolean v5, v0, v1

    .line 52
    sget-object v1, Lchan/android/app/pocketnote/MainActivity;->PHOTO_ACTIONS:Ljava/util/List;

    new-instance v2, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$Item;

    const v3, 0x7f020091

    const-string v4, "Take photo"

    invoke-direct {v2, v3, v4}, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$Item;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x82

    aput-boolean v5, v0, v1

    .line 53
    sget-object v1, Lchan/android/app/pocketnote/MainActivity;->PHOTO_ACTIONS:Ljava/util/List;

    new-instance v2, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$Item;

    const v3, 0x7f020090

    const-string v4, "Choose photo"

    invoke-direct {v2, v3, v4}, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$Item;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    const/16 v1, 0x83

    aput-boolean v5, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 44
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$100(Lchan/android/app/pocketnote/MainActivity;)Ljava/lang/CharSequence;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 44
    iget-object v1, p0, Lchan/android/app/pocketnote/MainActivity;->title:Ljava/lang/CharSequence;

    const/16 v2, 0x7e

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$200(Lchan/android/app/pocketnote/MainActivity;)Ljava/lang/CharSequence;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 44
    iget-object v1, p0, Lchan/android/app/pocketnote/MainActivity;->drawerTitle:Ljava/lang/CharSequence;

    const/16 v2, 0x7f

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$300(Lchan/android/app/pocketnote/MainActivity;I)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 44
    invoke-direct {p0, p1}, Lchan/android/app/pocketnote/MainActivity;->selectItem(I)V

    const/16 v1, 0x80

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private closeDrawer()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 228
    iget-object v1, p0, Lchan/android/app/pocketnote/MainActivity;->username:Landroid/widget/TextView;

    invoke-static {}, Lchan/android/app/pocketnote/app/AppPreferences;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x45

    aput-boolean v3, v0, v1

    .line 229
    iget-object v1, p0, Lchan/android/app/pocketnote/MainActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v2, p0, Lchan/android/app/pocketnote/MainActivity;->drawerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    .line 230
    const/16 v1, 0x46

    aput-boolean v3, v0, v1

    return-void
.end method

.method private displayPhoto(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/16 v6, 0x30

    const/4 v5, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/MainActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 161
    :try_start_0
    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2b

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 162
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iget-object v2, p0, Lchan/android/app/pocketnote/MainActivity;->photoImageView:Lchan/android/app/pocketnote/util/view/CircularImageView;

    invoke-virtual {v0, p1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    const/16 v0, 0x2c

    const/4 v2, 0x1

    aput-boolean v2, v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :goto_0
    aput-boolean v5, v1, v6

    .line 171
    :goto_1
    const/16 v0, 0x33

    aput-boolean v5, v1, v0

    return-void

    .line 164
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x2d

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 165
    const/16 v2, 0x30

    invoke-static {p0, v2}, Lchan/android/app/pocketnote/util/DeviceUtility;->dpToPx(Landroid/content/Context;I)I

    move-result v2

    const/16 v3, 0x2e

    const/4 v4, 0x1

    aput-boolean v4, v1, v3

    .line 166
    iget-object v3, p0, Lchan/android/app/pocketnote/MainActivity;->photoImageView:Lchan/android/app/pocketnote/util/view/CircularImageView;

    invoke-static {v0, v2, v2}, Lchan/android/app/pocketnote/util/BitmapUtility;->decodeBitmapFromFile(Ljava/io/File;II)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v3, v0}, Lchan/android/app/pocketnote/util/view/CircularImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/16 v0, 0x2f

    const/4 v2, 0x1

    aput-boolean v2, v1, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 168
    :catch_0
    move-exception v0

    const/16 v2, 0x31

    aput-boolean v5, v1, v2

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayPhoto raise exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lchan/android/app/pocketnote/util/Logger;->e(Ljava/lang/String;)V

    const/16 v0, 0x32

    aput-boolean v5, v1, v0

    goto :goto_1
.end method

.method private getRealPathFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/MainActivity;->$jacocoInit()[Z

    move-result-object v8

    .line 306
    invoke-virtual {p0}, Lchan/android/app/pocketnote/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 307
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    const/16 v0, 0x6b

    aput-boolean v9, v8, v0

    .line 308
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    .local v7, "result":Ljava/lang/String;
    const/16 v0, 0x6c

    aput-boolean v9, v8, v0

    .line 315
    .end local v7    # "result":Ljava/lang/String;
    :goto_0
    const/16 v0, 0x71

    aput-boolean v9, v8, v0

    return-object v7

    .line 310
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const/16 v0, 0x6d

    aput-boolean v9, v8, v0

    .line 311
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x6e

    aput-boolean v9, v8, v1

    .line 312
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v0, 0x6f

    aput-boolean v9, v8, v0

    .line 313
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/16 v0, 0x70

    aput-boolean v9, v8, v0

    goto :goto_0
.end method

.method private openDrawer()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 223
    iget-object v1, p0, Lchan/android/app/pocketnote/MainActivity;->username:Landroid/widget/TextView;

    invoke-static {}, Lchan/android/app/pocketnote/app/AppPreferences;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x43

    aput-boolean v3, v0, v1

    .line 224
    iget-object v1, p0, Lchan/android/app/pocketnote/MainActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v2, p0, Lchan/android/app/pocketnote/MainActivity;->drawerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    .line 225
    const/16 v1, 0x44

    aput-boolean v3, v0, v1

    return-void
.end method

.method private selectItem(I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 252
    iget v1, p0, Lchan/android/app/pocketnote/MainActivity;->fragIndex:I

    if-ne p1, v1, :cond_0

    const/16 v1, 0x52

    aput-boolean v2, v0, v1

    .line 255
    :goto_0
    iput p1, p0, Lchan/android/app/pocketnote/MainActivity;->fragIndex:I

    const/16 v1, 0x55

    aput-boolean v2, v0, v1

    .line 256
    invoke-direct {p0}, Lchan/android/app/pocketnote/MainActivity;->closeDrawer()V

    .line 257
    const/16 v1, 0x56

    aput-boolean v2, v0, v1

    return-void

    .line 252
    :cond_0
    const/16 v1, 0x53

    aput-boolean v2, v0, v1

    .line 253
    iget v1, p0, Lchan/android/app/pocketnote/MainActivity;->fragIndex:I

    invoke-direct {p0, v1, p1}, Lchan/android/app/pocketnote/MainActivity;->swapFragment(II)V

    const/16 v1, 0x54

    aput-boolean v2, v0, v1

    goto :goto_0
.end method

.method private setupActionBar()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 181
    invoke-virtual {p0}, Lchan/android/app/pocketnote/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const/16 v1, 0x34

    aput-boolean v3, v0, v1

    .line 182
    invoke-virtual {p0}, Lchan/android/app/pocketnote/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    const/16 v1, 0x35

    aput-boolean v3, v0, v1

    .line 183
    invoke-virtual {p0}, Lchan/android/app/pocketnote/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const-string v2, "Pocket Note"

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 184
    const/16 v1, 0x36

    aput-boolean v3, v0, v1

    return-void
.end method

.method private setupNavigationDrawer()V
    .locals 12

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/MainActivity;->$jacocoInit()[Z

    move-result-object v11

    .line 119
    const/4 v0, 0x4

    new-array v6, v0, [Lchan/android/app/pocketnote/util/view/NavigationDrawerItem;

    const/16 v0, 0x63

    const-string v1, "Notes"

    const-string v2, "ic_drawer_note"

    const/16 v4, 0x16

    aput-boolean v3, v11, v4

    move v4, v3

    move-object v5, p0

    .line 120
    invoke-static/range {v0 .. v5}, Lchan/android/app/pocketnote/util/view/NavigationMenuItem;->create(ILjava/lang/String;Ljava/lang/String;ZZLandroid/content/Context;)Lchan/android/app/pocketnote/util/view/NavigationMenuItem;

    move-result-object v0

    aput-object v0, v6, v8

    const/16 v0, 0x64

    const-string v1, "Calendar"

    const-string v2, "ic_drawer_calendar"

    const/16 v4, 0x17

    aput-boolean v3, v11, v4

    move v4, v3

    move-object v5, p0

    .line 121
    invoke-static/range {v0 .. v5}, Lchan/android/app/pocketnote/util/view/NavigationMenuItem;->create(ILjava/lang/String;Ljava/lang/String;ZZLandroid/content/Context;)Lchan/android/app/pocketnote/util/view/NavigationMenuItem;

    move-result-object v0

    aput-object v0, v6, v3

    const/4 v7, 0x2

    const/16 v0, 0x65

    const-string v1, "Trash"

    const-string v2, "ic_drawer_trash"

    const/16 v4, 0x18

    aput-boolean v3, v11, v4

    move v4, v3

    move-object v5, p0

    .line 122
    invoke-static/range {v0 .. v5}, Lchan/android/app/pocketnote/util/view/NavigationMenuItem;->create(ILjava/lang/String;Ljava/lang/String;ZZLandroid/content/Context;)Lchan/android/app/pocketnote/util/view/NavigationMenuItem;

    move-result-object v0

    aput-object v0, v6, v7

    const/4 v7, 0x3

    const/16 v0, 0x66

    const-string v1, "Settings"

    const-string v2, "ic_drawer_settings"

    const/16 v4, 0x19

    aput-boolean v3, v11, v4

    move v4, v3

    move-object v5, p0

    .line 123
    invoke-static/range {v0 .. v5}, Lchan/android/app/pocketnote/util/view/NavigationMenuItem;->create(ILjava/lang/String;Ljava/lang/String;ZZLandroid/content/Context;)Lchan/android/app/pocketnote/util/view/NavigationMenuItem;

    move-result-object v0

    aput-object v0, v6, v7

    iput-object v6, p0, Lchan/android/app/pocketnote/MainActivity;->DRAWER_ITEMS:[Lchan/android/app/pocketnote/util/view/NavigationDrawerItem;

    const/16 v0, 0x1a

    aput-boolean v3, v11, v0

    .line 126
    invoke-virtual {p0}, Lchan/android/app/pocketnote/MainActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lchan/android/app/pocketnote/MainActivity;->drawerTitle:Ljava/lang/CharSequence;

    iput-object v0, p0, Lchan/android/app/pocketnote/MainActivity;->title:Ljava/lang/CharSequence;

    const/16 v0, 0x1b

    aput-boolean v3, v11, v0

    .line 128
    const v0, 0x7f0c0065

    invoke-virtual {p0, v0}, Lchan/android/app/pocketnote/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    iput-object v0, p0, Lchan/android/app/pocketnote/MainActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const/16 v0, 0x1c

    aput-boolean v3, v11, v0

    .line 129
    iget-object v0, p0, Lchan/android/app/pocketnote/MainActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x7f020083

    const v2, 0x800003

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/DrawerLayout;->setDrawerShadow(II)V

    const/16 v0, 0x1d

    aput-boolean v3, v11, v0

    .line 130
    iget-object v0, p0, Lchan/android/app/pocketnote/MainActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v8}, Landroid/support/v4/widget/DrawerLayout;->setFocusableInTouchMode(Z)V

    const/16 v0, 0x1e

    aput-boolean v3, v11, v0

    .line 132
    const v0, 0x7f0c0067

    invoke-virtual {p0, v0}, Lchan/android/app/pocketnote/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lchan/android/app/pocketnote/MainActivity;->drawerContainer:Landroid/widget/LinearLayout;

    const/16 v0, 0x1f

    aput-boolean v3, v11, v0

    .line 134
    const v0, 0x7f0c006b

    invoke-virtual {p0, v0}, Lchan/android/app/pocketnote/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lchan/android/app/pocketnote/MainActivity;->drawerList:Landroid/widget/ListView;

    const/16 v0, 0x20

    aput-boolean v3, v11, v0

    .line 135
    iget-object v0, p0, Lchan/android/app/pocketnote/MainActivity;->drawerList:Landroid/widget/ListView;

    new-instance v1, Lchan/android/app/pocketnote/util/view/NavigationDrawerAdapter;

    const v2, 0x7f030020

    iget-object v4, p0, Lchan/android/app/pocketnote/MainActivity;->DRAWER_ITEMS:[Lchan/android/app/pocketnote/util/view/NavigationDrawerItem;

    invoke-direct {v1, p0, v2, v4}, Lchan/android/app/pocketnote/util/view/NavigationDrawerAdapter;-><init>(Landroid/content/Context;I[Lchan/android/app/pocketnote/util/view/NavigationDrawerItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/16 v0, 0x21

    aput-boolean v3, v11, v0

    .line 136
    iget-object v0, p0, Lchan/android/app/pocketnote/MainActivity;->drawerList:Landroid/widget/ListView;

    new-instance v1, Lchan/android/app/pocketnote/MainActivity$DrawerItemClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lchan/android/app/pocketnote/MainActivity$DrawerItemClickListener;-><init>(Lchan/android/app/pocketnote/MainActivity;Lchan/android/app/pocketnote/MainActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/16 v0, 0x22

    aput-boolean v3, v11, v0

    .line 137
    new-instance v4, Lchan/android/app/pocketnote/MainActivity$1;

    iget-object v7, p0, Lchan/android/app/pocketnote/MainActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v8, 0x7f0200a5

    const v9, 0x7f0d0010

    const v10, 0x7f0d000f

    move-object v5, p0

    move-object v6, p0

    invoke-direct/range {v4 .. v10}, Lchan/android/app/pocketnote/MainActivity$1;-><init>(Lchan/android/app/pocketnote/MainActivity;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;III)V

    iput-object v4, p0, Lchan/android/app/pocketnote/MainActivity;->drawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    const/16 v0, 0x23

    aput-boolean v3, v11, v0

    .line 148
    iget-object v0, p0, Lchan/android/app/pocketnote/MainActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lchan/android/app/pocketnote/MainActivity;->drawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    const/16 v0, 0x24

    aput-boolean v3, v11, v0

    .line 150
    const v0, 0x7f0c0069

    invoke-virtual {p0, v0}, Lchan/android/app/pocketnote/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lchan/android/app/pocketnote/util/view/CircularImageView;

    iput-object v0, p0, Lchan/android/app/pocketnote/MainActivity;->photoImageView:Lchan/android/app/pocketnote/util/view/CircularImageView;

    const/16 v0, 0x25

    aput-boolean v3, v11, v0

    .line 151
    invoke-static {}, Lchan/android/app/pocketnote/app/AppPreferences;->getUserPhotoFilePath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x26

    aput-boolean v3, v11, v0

    .line 155
    :goto_0
    const v0, 0x7f0c006a

    invoke-virtual {p0, v0}, Lchan/android/app/pocketnote/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lchan/android/app/pocketnote/MainActivity;->username:Landroid/widget/TextView;

    const/16 v0, 0x29

    aput-boolean v3, v11, v0

    .line 156
    iget-object v0, p0, Lchan/android/app/pocketnote/MainActivity;->username:Landroid/widget/TextView;

    invoke-static {}, Lchan/android/app/pocketnote/app/AppPreferences;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    const/16 v0, 0x2a

    aput-boolean v3, v11, v0

    return-void

    .line 151
    :cond_0
    const/16 v0, 0x27

    aput-boolean v3, v11, v0

    .line 152
    invoke-static {}, Lchan/android/app/pocketnote/app/AppPreferences;->getUserPhotoFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lchan/android/app/pocketnote/MainActivity;->displayPhoto(Ljava/lang/String;)V

    const/16 v0, 0x28

    aput-boolean v3, v11, v0

    goto :goto_0
.end method

.method private swapFragment(II)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 243
    invoke-virtual {p0}, Lchan/android/app/pocketnote/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const/16 v2, 0x4c

    aput-boolean v4, v0, v2

    .line 244
    const v2, 0x7f040004

    const v3, 0x7f040005

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;

    const/16 v2, 0x4d

    aput-boolean v4, v0, v2

    .line 245
    iget-object v2, p0, Lchan/android/app/pocketnote/MainActivity;->fragments:[Landroid/support/v4/app/Fragment;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    const/16 v2, 0x4e

    aput-boolean v4, v0, v2

    .line 246
    iget-object v2, p0, Lchan/android/app/pocketnote/MainActivity;->fragments:[Landroid/support/v4/app/Fragment;

    aget-object v2, v2, p2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    const/16 v2, 0x4f

    aput-boolean v4, v0, v2

    .line 247
    iget-object v2, p0, Lchan/android/app/pocketnote/MainActivity;->fragments:[Landroid/support/v4/app/Fragment;

    aget-object v2, v2, p2

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->onResume()V

    const/16 v2, 0x50

    aput-boolean v4, v0, v2

    .line 248
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 249
    const/16 v1, 0x51

    aput-boolean v4, v0, v1

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 261
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    const/16 v1, 0x57

    aput-boolean v4, v0, v1

    .line 280
    :goto_0
    iget-object v1, p0, Lchan/android/app/pocketnote/MainActivity;->fragments:[Landroid/support/v4/app/Fragment;

    iget v2, p0, Lchan/android/app/pocketnote/MainActivity;->fragIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 281
    const/16 v1, 0x60

    aput-boolean v4, v0, v1

    return-void

    .line 262
    :cond_0
    packed-switch p1, :pswitch_data_0

    const/16 v1, 0x58

    aput-boolean v4, v0, v1

    goto :goto_0

    .line 264
    :pswitch_0
    invoke-static {}, Lchan/android/app/pocketnote/app/AppPreferences;->getUserTempPhotoFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lchan/android/app/pocketnote/app/AppPreferences;->saveUserPhotoFilePath(Ljava/lang/String;)V

    const/16 v1, 0x59

    aput-boolean v4, v0, v1

    .line 265
    invoke-static {}, Lchan/android/app/pocketnote/app/AppPreferences;->getUserPhotoFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lchan/android/app/pocketnote/MainActivity;->displayPhoto(Ljava/lang/String;)V

    .line 266
    const/16 v1, 0x5a

    aput-boolean v4, v0, v1

    goto :goto_0

    .line 269
    :pswitch_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const/16 v2, 0x5b

    aput-boolean v4, v0, v2

    .line 270
    invoke-direct {p0, v1}, Lchan/android/app/pocketnote/MainActivity;->getRealPathFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5c

    aput-boolean v4, v0, v2

    .line 271
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Image from gallery path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lchan/android/app/pocketnote/util/Logger;->e(Ljava/lang/String;)V

    const/16 v2, 0x5d

    aput-boolean v4, v0, v2

    .line 272
    invoke-static {v1}, Lchan/android/app/pocketnote/app/AppPreferences;->saveUserPhotoFilePath(Ljava/lang/String;)V

    const/16 v2, 0x5e

    aput-boolean v4, v0, v2

    .line 273
    invoke-direct {p0, v1}, Lchan/android/app/pocketnote/MainActivity;->displayPhoto(Ljava/lang/String;)V

    .line 274
    const/16 v1, 0x5f

    aput-boolean v4, v0, v1

    goto :goto_0

    .line 262
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 234
    iget-object v1, p0, Lchan/android/app/pocketnote/MainActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v2, p0, Lchan/android/app/pocketnote/MainActivity;->drawerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x47

    aput-boolean v3, v0, v1

    .line 235
    invoke-direct {p0}, Lchan/android/app/pocketnote/MainActivity;->openDrawer()V

    const/16 v1, 0x48

    aput-boolean v3, v0, v1

    .line 240
    :goto_0
    const/16 v1, 0x4b

    aput-boolean v3, v0, v1

    return-void

    .line 237
    :cond_0
    invoke-direct {p0}, Lchan/android/app/pocketnote/MainActivity;->closeDrawer()V

    const/16 v1, 0x49

    aput-boolean v3, v0, v1

    .line 238
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onBackPressed()V

    const/16 v1, 0x4a

    aput-boolean v3, v0, v1

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 217
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/16 v1, 0x41

    aput-boolean v2, v0, v1

    .line 219
    iget-object v1, p0, Lchan/android/app/pocketnote/MainActivity;->drawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    invoke-virtual {v1, p1}, Landroid/support/v4/app/ActionBarDrawerToggle;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 220
    const/16 v1, 0x42

    aput-boolean v2, v0, v1

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v3, 0x2

    const/4 v6, 0x0

    const v5, 0x7f0c0066

    const/4 v4, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 75
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    aput-boolean v4, v0, v4

    .line 76
    const v1, 0x7f03001f

    invoke-virtual {p0, v1}, Lchan/android/app/pocketnote/MainActivity;->setContentView(I)V

    aput-boolean v4, v0, v3

    .line 78
    invoke-direct {p0}, Lchan/android/app/pocketnote/MainActivity;->setupActionBar()V

    aput-boolean v4, v0, v7

    .line 79
    invoke-direct {p0}, Lchan/android/app/pocketnote/MainActivity;->setupNavigationDrawer()V

    const/4 v1, 0x4

    aput-boolean v4, v0, v1

    .line 81
    invoke-static {}, Lchan/android/app/pocketnote/app/notes/NotesFragment;->newInstance()Lchan/android/app/pocketnote/app/notes/NotesFragment;

    move-result-object v1

    iput-object v1, p0, Lchan/android/app/pocketnote/MainActivity;->fragmentNote:Landroid/support/v4/app/Fragment;

    const/4 v1, 0x5

    aput-boolean v4, v0, v1

    .line 82
    invoke-static {}, Lchan/android/app/pocketnote/app/trash/TrashFragment;->newInstance()Lchan/android/app/pocketnote/app/trash/TrashFragment;

    move-result-object v1

    iput-object v1, p0, Lchan/android/app/pocketnote/MainActivity;->fragmentTrash:Landroid/support/v4/app/Fragment;

    const/4 v1, 0x6

    aput-boolean v4, v0, v1

    .line 83
    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->newInstance()Lchan/android/app/pocketnote/app/calendar/CalendarFragment;

    move-result-object v1

    iput-object v1, p0, Lchan/android/app/pocketnote/MainActivity;->fragmentCalendar:Landroid/support/v4/app/Fragment;

    const/4 v1, 0x7

    aput-boolean v4, v0, v1

    .line 84
    invoke-static {}, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->newInstance()Lchan/android/app/pocketnote/app/settings/SettingsFragment;

    move-result-object v1

    iput-object v1, p0, Lchan/android/app/pocketnote/MainActivity;->fragmentSettings:Landroid/support/v4/app/Fragment;

    .line 86
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/support/v4/app/Fragment;

    iput-object v1, p0, Lchan/android/app/pocketnote/MainActivity;->fragments:[Landroid/support/v4/app/Fragment;

    .line 87
    iget-object v1, p0, Lchan/android/app/pocketnote/MainActivity;->fragments:[Landroid/support/v4/app/Fragment;

    iget-object v2, p0, Lchan/android/app/pocketnote/MainActivity;->fragmentNote:Landroid/support/v4/app/Fragment;

    aput-object v2, v1, v6

    .line 88
    iget-object v1, p0, Lchan/android/app/pocketnote/MainActivity;->fragments:[Landroid/support/v4/app/Fragment;

    iget-object v2, p0, Lchan/android/app/pocketnote/MainActivity;->fragmentCalendar:Landroid/support/v4/app/Fragment;

    aput-object v2, v1, v4

    .line 89
    iget-object v1, p0, Lchan/android/app/pocketnote/MainActivity;->fragments:[Landroid/support/v4/app/Fragment;

    iget-object v2, p0, Lchan/android/app/pocketnote/MainActivity;->fragmentTrash:Landroid/support/v4/app/Fragment;

    aput-object v2, v1, v3

    .line 90
    iget-object v1, p0, Lchan/android/app/pocketnote/MainActivity;->fragments:[Landroid/support/v4/app/Fragment;

    iget-object v2, p0, Lchan/android/app/pocketnote/MainActivity;->fragmentSettings:Landroid/support/v4/app/Fragment;

    aput-object v2, v1, v7

    const/16 v1, 0x8

    aput-boolean v4, v0, v1

    .line 92
    invoke-virtual {p0}, Lchan/android/app/pocketnote/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const/16 v2, 0x9

    aput-boolean v4, v0, v2

    .line 93
    iget-object v2, p0, Lchan/android/app/pocketnote/MainActivity;->fragmentNote:Landroid/support/v4/app/Fragment;

    const-string v3, "notes"

    invoke-virtual {v1, v5, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    const/16 v2, 0xa

    aput-boolean v4, v0, v2

    .line 94
    iget-object v2, p0, Lchan/android/app/pocketnote/MainActivity;->fragmentTrash:Landroid/support/v4/app/Fragment;

    const-string v3, "Trash"

    invoke-virtual {v1, v5, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    const/16 v2, 0xb

    aput-boolean v4, v0, v2

    .line 95
    iget-object v2, p0, Lchan/android/app/pocketnote/MainActivity;->fragmentCalendar:Landroid/support/v4/app/Fragment;

    const-string v3, "Calendar"

    invoke-virtual {v1, v5, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    const/16 v2, 0xc

    aput-boolean v4, v0, v2

    .line 96
    iget-object v2, p0, Lchan/android/app/pocketnote/MainActivity;->fragmentSettings:Landroid/support/v4/app/Fragment;

    const-string v3, "Settings"

    invoke-virtual {v1, v5, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 98
    if-eqz p1, :cond_0

    const/16 v2, 0xd

    aput-boolean v4, v0, v2

    .line 105
    :goto_0
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 106
    const/16 v1, 0x13

    aput-boolean v4, v0, v1

    return-void

    .line 98
    :cond_0
    const/16 v2, 0xe

    aput-boolean v4, v0, v2

    .line 99
    iget-object v2, p0, Lchan/android/app/pocketnote/MainActivity;->fragmentCalendar:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    const/16 v2, 0xf

    aput-boolean v4, v0, v2

    .line 100
    iget-object v2, p0, Lchan/android/app/pocketnote/MainActivity;->fragmentTrash:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    const/16 v2, 0x10

    aput-boolean v4, v0, v2

    .line 101
    iget-object v2, p0, Lchan/android/app/pocketnote/MainActivity;->fragmentSettings:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    const/16 v2, 0x11

    aput-boolean v4, v0, v2

    .line 102
    iget-object v2, p0, Lchan/android/app/pocketnote/MainActivity;->fragmentNote:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 103
    iput v6, p0, Lchan/android/app/pocketnote/MainActivity;->fragIndex:I

    const/16 v2, 0x12

    aput-boolean v4, v0, v2

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 188
    invoke-virtual {p0}, Lchan/android/app/pocketnote/MainActivity;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v1

    const/16 v2, 0x37

    aput-boolean v3, v0, v2

    .line 189
    const v2, 0x7f0e0004

    invoke-virtual {v1, v2, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    const/16 v1, 0x38

    aput-boolean v3, v0, v1

    .line 190
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v1

    const/16 v2, 0x39

    aput-boolean v3, v0, v2

    return v1
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 285
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onDestroy()V

    .line 286
    const/16 v1, 0x61

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 195
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const/16 v1, 0x3a

    aput-boolean v3, v0, v1

    .line 205
    :goto_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v1

    const/16 v2, 0x3e

    aput-boolean v3, v0, v2

    return v1

    .line 197
    :pswitch_0
    iget-object v1, p0, Lchan/android/app/pocketnote/MainActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v2, p0, Lchan/android/app/pocketnote/MainActivity;->drawerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x3b

    aput-boolean v3, v0, v1

    .line 198
    invoke-direct {p0}, Lchan/android/app/pocketnote/MainActivity;->closeDrawer()V

    const/16 v1, 0x3c

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 200
    :cond_0
    invoke-direct {p0}, Lchan/android/app/pocketnote/MainActivity;->openDrawer()V

    const/16 v1, 0x3d

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 195
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/MainActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 345
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onPause()V

    .line 347
    const-string v1, "jacoco"

    const/16 v3, 0x72

    aput-boolean v9, v2, v3

    .line 350
    const-string v3, "StorageSt"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x73

    aput-boolean v9, v2, v3

    .line 351
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

    const/16 v4, 0x74

    aput-boolean v9, v2, v4

    .line 352
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x75

    const/4 v5, 0x1

    :try_start_0
    aput-boolean v5, v2, v3

    .line 354
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    const/16 v3, 0x76

    const/4 v5, 0x1

    aput-boolean v5, v2, v3

    .line 355
    const-string v3, "com.vladium.emma.rt.RT"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 356
    .local v0, "emmaRTClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "dumpCoverageData"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const/16 v7, 0x77

    const/4 v8, 0x1

    aput-boolean v8, v2, v7

    .line 357
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/16 v6, 0x78

    const/4 v7, 0x1

    aput-boolean v7, v2, v6

    .line 356
    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/16 v5, 0x79

    const/4 v6, 0x1

    aput-boolean v6, v2, v5

    .line 359
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

    const/16 v3, 0x7a

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 360
    const-string v3, "generateCoverageReport: ok"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    const/16 v1, 0x7d

    aput-boolean v9, v2, v1

    return-void

    .line 361
    :catch_0
    move-exception v1

    const/16 v3, 0x7b

    aput-boolean v9, v2, v3

    .line 362
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Is emma jar on classpath?"

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v1, 0x7c

    aput-boolean v9, v2, v1

    throw v3
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 210
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onPostCreate(Landroid/os/Bundle;)V

    const/16 v1, 0x3f

    aput-boolean v2, v0, v1

    .line 212
    iget-object v1, p0, Lchan/android/app/pocketnote/MainActivity;->drawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    invoke-virtual {v1}, Landroid/support/v4/app/ActionBarDrawerToggle;->syncState()V

    .line 213
    const/16 v1, 0x40

    aput-boolean v2, v0, v1

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 298
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const/16 v1, 0x66

    aput-boolean v2, v0, v1

    .line 299
    const-string v1, "camera_image_uri"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x67

    aput-boolean v2, v0, v1

    .line 302
    :goto_0
    const/16 v1, 0x6a

    aput-boolean v2, v0, v1

    return-void

    .line 299
    :cond_0
    const/16 v1, 0x68

    aput-boolean v2, v0, v1

    .line 300
    const-string v1, "camera_image_uri"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lchan/android/app/pocketnote/MainActivity;->imageUri:Landroid/net/Uri;

    const/16 v1, 0x69

    aput-boolean v2, v0, v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 115
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onResume()V

    .line 116
    const/16 v1, 0x15

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 290
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 291
    iget-object v1, p0, Lchan/android/app/pocketnote/MainActivity;->imageUri:Landroid/net/Uri;

    if-nez v1, :cond_0

    const/16 v1, 0x62

    aput-boolean v3, v0, v1

    .line 294
    :goto_0
    const/16 v1, 0x65

    aput-boolean v3, v0, v1

    return-void

    .line 291
    :cond_0
    const/16 v1, 0x63

    aput-boolean v3, v0, v1

    .line 292
    const-string v1, "camera_image_uri"

    iget-object v2, p0, Lchan/android/app/pocketnote/MainActivity;->imageUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x64

    aput-boolean v3, v0, v1

    goto :goto_0
.end method

.method public onStart()V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 110
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onStart()V

    .line 111
    const/16 v1, 0x14

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
