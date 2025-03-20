.class public Lchan/android/app/pocketnote/app/settings/SettingsFragment;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "SettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lchan/android/app/pocketnote/app/settings/SettingsFragment$OnColorClickListener;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field static final ALPHABET_COLUMN_OPTIONS:[Ljava/lang/String;

.field private static final INTENT_CHOOSE_PHOTO:I = 0x1

.field private static final INTENT_TAKE_PHOTO:I = 0x0

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

.field static final SORTING_OPTIONS:[Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "Settings"

.field static final VIEW_OPTIONS:[Ljava/lang/String;


# instance fields
.field private buttonColor:Landroid/widget/Button;

.field private buttonRate:Landroid/widget/Button;

.field private linearLayoutColor:Landroid/widget/LinearLayout;

.field private photoImageView:Lchan/android/app/pocketnote/util/view/CircularImageView;

.field private photoPath:Ljava/lang/String;

.field private relativeLayoutName:Landroid/widget/RelativeLayout;

.field private relativeLayoutPassword:Landroid/widget/RelativeLayout;

.field private relativeLayoutPhoto:Landroid/widget/RelativeLayout;

.field private spinnerAlphabet:Landroid/widget/Spinner;

.field private spinnerCollectionView:Landroid/widget/Spinner;

.field private spinnerSorting:Landroid/widget/Spinner;

.field private textViewUserName:Landroid/widget/TextView;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x9891f0eff52c12L

    const-string v2, "chan/android/app/pocketnote/app/settings/SettingsFragment"

    const/16 v3, 0x4d

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 39
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "By modified time"

    aput-object v2, v1, v3

    const-string v2, "By alphabet"

    aput-object v2, v1, v5

    const-string v2, "By color"

    aput-object v2, v1, v4

    sput-object v1, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->SORTING_OPTIONS:[Ljava/lang/String;

    .line 44
    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "As list view"

    aput-object v2, v1, v3

    const-string v2, "As grid view"

    aput-object v2, v1, v5

    sput-object v1, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->VIEW_OPTIONS:[Ljava/lang/String;

    .line 48
    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "By title"

    aput-object v2, v1, v3

    const-string v2, "By content"

    aput-object v2, v1, v5

    sput-object v1, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->ALPHABET_COLUMN_OPTIONS:[Ljava/lang/String;

    const/16 v1, 0x49

    aput-boolean v5, v0, v1

    .line 54
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->PHOTO_ACTIONS:Ljava/util/List;

    const/16 v1, 0x4a

    aput-boolean v5, v0, v1

    .line 57
    sget-object v1, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->PHOTO_ACTIONS:Ljava/util/List;

    new-instance v2, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$Item;

    const v3, 0x7f020091

    const-string v4, "Take photo"

    invoke-direct {v2, v3, v4}, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$Item;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x4b

    aput-boolean v5, v0, v1

    .line 58
    sget-object v1, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->PHOTO_ACTIONS:Ljava/util/List;

    new-instance v2, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$Item;

    const v3, 0x7f020090

    const-string v4, "Choose photo"

    invoke-direct {v2, v3, v4}, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$Item;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    const/16 v1, 0x4c

    aput-boolean v5, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 36
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$000(Lchan/android/app/pocketnote/app/settings/SettingsFragment;)Landroid/widget/Spinner;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 36
    iget-object v1, p0, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->spinnerAlphabet:Landroid/widget/Spinner;

    const/16 v2, 0x44

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$200()Ljava/util/List;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 36
    sget-object v1, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->PHOTO_ACTIONS:Ljava/util/List;

    const/16 v2, 0x45

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$300(Lchan/android/app/pocketnote/app/settings/SettingsFragment;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 36
    invoke-direct {p0}, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->dispatchTakePictureIntent()V

    const/16 v1, 0x46

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$400(Lchan/android/app/pocketnote/app/settings/SettingsFragment;)Landroid/widget/TextView;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 36
    iget-object v1, p0, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->textViewUserName:Landroid/widget/TextView;

    const/16 v2, 0x47

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$500(Lchan/android/app/pocketnote/app/settings/SettingsFragment;)Landroid/widget/Button;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 36
    iget-object v1, p0, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->buttonColor:Landroid/widget/Button;

    const/16 v2, 0x48

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private createImageFile()Ljava/io/File;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 257
    const-string v1, "user_photo"

    const/16 v2, 0x2e

    aput-boolean v4, v0, v2

    .line 258
    sget-object v2, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const/16 v3, 0x2f

    aput-boolean v4, v0, v3

    .line 259
    const-string v3, ".jpg"

    invoke-static {v1, v3, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    const/16 v2, 0x30

    aput-boolean v4, v0, v2

    .line 265
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->photoPath:Ljava/lang/String;

    const/16 v2, 0x31

    aput-boolean v4, v0, v2

    .line 266
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lchan/android/app/pocketnote/app/AppPreferences;->saveUserTempPhotoFilePath(Ljava/lang/String;)V

    .line 267
    const/16 v2, 0x32

    aput-boolean v4, v0, v2

    return-object v1
.end method

.method private dispatchTakePictureIntent()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->$jacocoInit()[Z

    move-result-object v2

    .line 238
    new-instance v3, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x23

    aput-boolean v6, v2, v1

    .line 239
    invoke-virtual {p0}, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_0

    const/16 v1, 0x24

    aput-boolean v6, v2, v1

    .line 253
    :goto_0
    const/16 v1, 0x2d

    aput-boolean v6, v2, v1

    return-void

    .line 240
    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0x25

    const/4 v4, 0x1

    :try_start_0
    aput-boolean v4, v2, v1

    .line 242
    invoke-direct {p0}, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->createImageFile()Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 245
    .local v0, "photoFile":Ljava/io/File;
    const/16 v1, 0x26

    aput-boolean v6, v2, v1

    .line 247
    .end local v0    # "photoFile":Ljava/io/File;
    :goto_1
    if-nez v0, :cond_1

    const/16 v1, 0x29

    aput-boolean v6, v2, v1

    goto :goto_0

    .line 243
    :catch_0
    move-exception v1

    const/16 v4, 0x27

    aput-boolean v6, v2, v4

    .line 244
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Hmm, io exception? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lchan/android/app/pocketnote/util/Logger;->e(Ljava/lang/String;)V

    const/16 v1, 0x28

    aput-boolean v6, v2, v1

    goto :goto_1

    .line 247
    :cond_1
    const/16 v1, 0x2a

    aput-boolean v6, v2, v1

    .line 248
    const-string v1, "output"

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 v1, 0x2b

    aput-boolean v6, v2, v1

    .line 249
    invoke-virtual {p0}, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const/16 v1, 0x2c

    aput-boolean v6, v2, v1

    goto :goto_0
.end method

.method private displayPhoto(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->$jacocoInit()[Z

    move-result-object v1

    .line 272
    :try_start_0
    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x33

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 273
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iget-object v2, p0, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->photoImageView:Lchan/android/app/pocketnote/util/view/CircularImageView;

    invoke-virtual {v0, p1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    const/16 v0, 0x34

    const/4 v2, 0x1

    aput-boolean v2, v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :goto_0
    const/16 v0, 0x38

    aput-boolean v5, v1, v0

    .line 284
    :goto_1
    const/16 v0, 0x3c

    aput-boolean v5, v1, v0

    return-void

    .line 276
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x35

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 277
    invoke-virtual {p0}, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/16 v3, 0x20

    invoke-static {v2, v3}, Lchan/android/app/pocketnote/util/DeviceUtility;->dpToPx(Landroid/content/Context;I)I

    move-result v2

    const/16 v3, 0x36

    const/4 v4, 0x1

    aput-boolean v4, v1, v3

    .line 278
    iget-object v3, p0, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->photoImageView:Lchan/android/app/pocketnote/util/view/CircularImageView;

    invoke-static {v0, v2, v2}, Lchan/android/app/pocketnote/util/BitmapUtility;->decodeBitmapFromFile(Ljava/io/File;II)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v3, v0}, Lchan/android/app/pocketnote/util/view/CircularImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/16 v0, 0x37

    const/4 v2, 0x1

    aput-boolean v2, v1, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 280
    :catch_0
    move-exception v0

    const/16 v2, 0x39

    aput-boolean v5, v1, v2

    .line 281
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

    const/16 v0, 0x3a

    aput-boolean v5, v1, v0

    .line 282
    iget-object v0, p0, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->photoImageView:Lchan/android/app/pocketnote/util/view/CircularImageView;

    const v2, 0x7f0200b5

    invoke-virtual {v0, v2}, Lchan/android/app/pocketnote/util/view/CircularImageView;->setImageResource(I)V

    const/16 v0, 0x3b

    aput-boolean v5, v1, v0

    goto :goto_1
.end method

.method public static newInstance()Lchan/android/app/pocketnote/app/settings/SettingsFragment;
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 86
    new-instance v1, Lchan/android/app/pocketnote/app/settings/SettingsFragment;

    invoke-direct {v1}, Lchan/android/app/pocketnote/app/settings/SettingsFragment;-><init>()V

    aput-boolean v2, v0, v2

    return-object v1
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 310
    invoke-static {}, Lchan/android/app/pocketnote/app/AppPreferences;->getUserPhotoFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->displayPhoto(Ljava/lang/String;)V

    .line 311
    const/16 v1, 0x43

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 91
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    .line 92
    invoke-virtual {p0, v2}, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->setHasOptionsMenu(Z)V

    .line 93
    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 294
    invoke-interface {p1}, Lcom/actionbarsherlock/view/Menu;->clear()V

    const/16 v1, 0x3f

    aput-boolean v2, v0, v1

    .line 295
    const/high16 v1, 0x7f0e0000

    invoke-virtual {p2, v1, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    const/16 v1, 0x40

    aput-boolean v2, v0, v1

    .line 296
    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V

    .line 297
    const/16 v1, 0x41

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->$jacocoInit()[Z

    move-result-object v1

    .line 97
    const-string v0, "SettingsFragment.onCreateView()"

    invoke-static {v0}, Lchan/android/app/pocketnote/util/Logger;->e(Ljava/lang/String;)V

    const/4 v0, 0x4

    aput-boolean v6, v1, v0

    .line 98
    const v0, 0x7f030033

    const/4 v2, 0x0

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const/4 v0, 0x5

    aput-boolean v6, v1, v0

    .line 99
    const v0, 0x7f0c00ab

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->spinnerAlphabet:Landroid/widget/Spinner;

    const/4 v0, 0x6

    aput-boolean v6, v1, v0

    .line 100
    iget-object v0, p0, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->spinnerAlphabet:Landroid/widget/Spinner;

    invoke-virtual {v0, v7}, Landroid/widget/Spinner;->setVisibility(I)V

    const/4 v0, 0x7

    aput-boolean v6, v1, v0

    .line 101
    iget-object v0, p0, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->spinnerAlphabet:Landroid/widget/Spinner;

    new-instance v3, Lchan/android/app/pocketnote/app/settings/SettingItemAdapter;

    invoke-virtual {p0}, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    sget-object v5, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->ALPHABET_COLUMN_OPTIONS:[Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lchan/android/app/pocketnote/app/settings/SettingItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    aput-boolean v6, v1, v7

    .line 102
    iget-object v0, p0, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->spinnerAlphabet:Landroid/widget/Spinner;

    new-instance v3, Lchan/android/app/pocketnote/app/settings/SettingsFragment$1;

    invoke-direct {v3, p0}, Lchan/android/app/pocketnote/app/settings/SettingsFragment$1;-><init>(Lchan/android/app/pocketnote/app/settings/SettingsFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const/16 v0, 0x9

    aput-boolean v6, v1, v0

    .line 118
    const v0, 0x7f0c00aa

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->spinnerSorting:Landroid/widget/Spinner;

    const/16 v0, 0xa

    aput-boolean v6, v1, v0

    .line 119
    iget-object v0, p0, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->spinnerSorting:Landroid/widget/Spinner;

    new-instance v3, Lchan/android/app/pocketnote/app/settings/SettingItemAdapter;

    invoke-virtual {p0}, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    sget-object v5, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->SORTING_OPTIONS:[Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lchan/android/app/pocketnote/app/settings/SettingItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const/16 v0, 0xb

    aput-boolean v6, v1, v0

    .line 120
    iget-object v0, p0, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->spinnerSorting:Landroid/widget/Spinner;

    invoke-static {}, Lchan/android/app/pocketnote/app/AppPreferences;->getDefaultSortBy()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    const/16 v0, 0xc

    aput-boolean v6, v1, v0

    .line 121
    iget-object v0, p0, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->spinnerSorting:Landroid/widget/Spinner;

    new-instance v3, Lchan/android/app/pocketnote/app/settings/SettingsFragment$2;

    invoke-direct {v3, p0}, Lchan/android/app/pocketnote/app/settings/SettingsFragment$2;-><init>(Lchan/android/app/pocketnote/app/settings/SettingsFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const/16 v0, 0xd

    aput-boolean v6, v1, v0

    .line 140
    const v0, 0x7f0c00ac

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->spinnerCollectionView:Landroid/widget/Spinner;

    const/16 v0, 0xe

    aput-boolean v6, v1, v0

    .line 141
    iget-object v0, p0, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->spinnerCollectionView:Landroid/widget/Spinner;

    new-instance v3, Lchan/android/app/pocketnote/app/settings/SettingItemAdapter;

    invoke-virtual {p0}, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    sget-object v5, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->VIEW_OPTIONS:[Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lchan/android/app/pocketnote/app/settings/SettingItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const/16 v0, 0xf

    aput-boolean v6, v1, v0

    .line 142
    iget-object v0, p0, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->spinnerCollectionView:Landroid/widget/Spinner;

    invoke-static {}, Lchan/android/app/pocketnote/app/AppPreferences;->getDefaultCollectionView()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    const/16 v0, 0x10

    aput-boolean v6, v1, v0

    .line 143
    iget-object v0, p0, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->spinnerCollectionView:Landroid/widget/Spinner;

    new-instance v3, Lchan/android/app/pocketnote/app/settings/SettingsFragment$3;

    invoke-direct {v3, p0}, Lchan/android/app/pocketnote/app/settings/SettingsFragment$3;-><init>(Lchan/android/app/pocketnote/app/settings/SettingsFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const/16 v0, 0x11

    aput-boolean v6, v1, v0

    .line 155
    new-instance v3, Lchan/android/app/pocketnote/app/settings/SettingsFragment$OnColorClickListener;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Lchan/android/app/pocketnote/app/settings/SettingsFragment$OnColorClickListener;-><init>(Lchan/android/app/pocketnote/app/settings/SettingsFragment;Lchan/android/app/pocketnote/app/settings/SettingsFragment$1;)V

    const/16 v0, 0x12

    aput-boolean v6, v1, v0

    .line 156
    const v0, 0x7f0c00a7

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->linearLayoutColor:Landroid/widget/LinearLayout;

    const/16 v0, 0x13

    aput-boolean v6, v1, v0

    .line 157
    iget-object v0, p0, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->linearLayoutColor:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x14

    aput-boolean v6, v1, v0

    .line 158
    const v0, 0x7f0c00a8

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->buttonColor:Landroid/widget/Button;

    const/16 v0, 0x15

    aput-boolean v6, v1, v0

    .line 159
    iget-object v0, p0, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->buttonColor:Landroid/widget/Button;

    invoke-static {}, Lchan/android/app/pocketnote/app/AppPreferences;->getDefaultColor()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundColor(I)V

    const/16 v0, 0x16

    aput-boolean v6, v1, v0

    .line 160
    iget-object v0, p0, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->buttonColor:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x17

    aput-boolean v6, v1, v0

    .line 163
    const v0, 0x7f0c00ad

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->relativeLayoutPassword:Landroid/widget/RelativeLayout;

    const/16 v0, 0x18

    aput-boolean v6, v1, v0

    .line 164
    iget-object v0, p0, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->relativeLayoutPassword:Landroid/widget/RelativeLayout;

    new-instance v3, Lchan/android/app/pocketnote/app/settings/SettingsFragment$4;

    invoke-direct {v3, p0}, Lchan/android/app/pocketnote/app/settings/SettingsFragment$4;-><init>(Lchan/android/app/pocketnote/app/settings/SettingsFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x19

    aput-boolean v6, v1, v0

    .line 175
    const v0, 0x7f0c00b4

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->buttonRate:Landroid/widget/Button;

    const/16 v0, 0x1a

    aput-boolean v6, v1, v0

    .line 176
    iget-object v0, p0, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->buttonRate:Landroid/widget/Button;

    new-instance v3, Lchan/android/app/pocketnote/app/settings/SettingsFragment$5;

    invoke-direct {v3, p0}, Lchan/android/app/pocketnote/app/settings/SettingsFragment$5;-><init>(Lchan/android/app/pocketnote/app/settings/SettingsFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x1b

    aput-boolean v6, v1, v0

    .line 185
    const v0, 0x7f0c00b1

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->relativeLayoutPhoto:Landroid/widget/RelativeLayout;

    const/16 v0, 0x1c

    aput-boolean v6, v1, v0

    .line 186
    iget-object v0, p0, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->relativeLayoutPhoto:Landroid/widget/RelativeLayout;

    new-instance v3, Lchan/android/app/pocketnote/app/settings/SettingsFragment$6;

    invoke-direct {v3, p0}, Lchan/android/app/pocketnote/app/settings/SettingsFragment$6;-><init>(Lchan/android/app/pocketnote/app/settings/SettingsFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x1d

    aput-boolean v6, v1, v0

    .line 206
    const v0, 0x7f0c00b3

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lchan/android/app/pocketnote/util/view/CircularImageView;

    iput-object v0, p0, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->photoImageView:Lchan/android/app/pocketnote/util/view/CircularImageView;

    const/16 v0, 0x1e

    aput-boolean v6, v1, v0

    .line 208
    const v0, 0x7f0c00ae

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->relativeLayoutName:Landroid/widget/RelativeLayout;

    const/16 v0, 0x1f

    aput-boolean v6, v1, v0

    .line 209
    iget-object v0, p0, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->relativeLayoutName:Landroid/widget/RelativeLayout;

    new-instance v3, Lchan/android/app/pocketnote/app/settings/SettingsFragment$7;

    invoke-direct {v3, p0}, Lchan/android/app/pocketnote/app/settings/SettingsFragment$7;-><init>(Lchan/android/app/pocketnote/app/settings/SettingsFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x20

    aput-boolean v6, v1, v0

    .line 232
    const v0, 0x7f0c00b0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->textViewUserName:Landroid/widget/TextView;

    const/16 v0, 0x21

    aput-boolean v6, v1, v0

    .line 233
    iget-object v0, p0, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->textViewUserName:Landroid/widget/TextView;

    invoke-static {}, Lchan/android/app/pocketnote/app/AppPreferences;->getUserName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    const/16 v0, 0x22

    aput-boolean v6, v1, v0

    return-object v2
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 301
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v1

    const/16 v2, 0x42

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 288
    invoke-static {}, Lchan/android/app/pocketnote/app/AppPreferences;->getUserPhotoFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lchan/android/app/pocketnote/app/settings/SettingsFragment;->displayPhoto(Ljava/lang/String;)V

    const/16 v1, 0x3d

    aput-boolean v2, v0, v1

    .line 289
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onResume()V

    .line 290
    const/16 v1, 0x3e

    aput-boolean v2, v0, v1

    return-void
.end method
