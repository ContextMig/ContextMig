.class public Lcom/moonpi/swiftnotes/MainActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;
.implements Landroid/widget/AbsListView$MultiChoiceModeListener;
.implements Landroid/support/v7/widget/SearchView$OnQueryTextListener;


# static fields
.field private static final transient synthetic $jacocoData:[Z

.field private static adapter:Lcom/moonpi/swiftnotes/NoteAdapter;

.field private static backupPath:Ljava/io/File;

.field public static checkedArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static deleteActive:Z

.field private static listView:Landroid/widget/ListView;

.field private static localPath:Ljava/io/File;

.field private static notes:Lorg/json/JSONArray;

.field public static searchActive:Z


# instance fields
.field private backupCheckDialog:Landroid/app/AlertDialog;

.field private backupOKDialog:Landroid/app/AlertDialog;

.field private lastFirstVisibleItem:I

.field private newNote:Landroid/widget/ImageButton;

.field private newNoteButtonBaseYCoordinate:F

.field private noNotes:Landroid/widget/TextView;

.field private realIndexesOfSearchResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private restoreCheckDialog:Landroid/app/AlertDialog;

.field private restoreFailedDialog:Landroid/app/AlertDialog;

.field private searchMenu:Landroid/view/MenuItem;

.field private toolbar:Landroid/support/v7/widget/Toolbar;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/moonpi/swiftnotes/MainActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x4734904c77af9b9eL    # 1.0677266253498655E35

    const-string v2, "com/moonpi/swiftnotes/MainActivity"

    const/16 v3, 0x158

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/moonpi/swiftnotes/MainActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    invoke-static {}, Lcom/moonpi/swiftnotes/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 72
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/moonpi/swiftnotes/MainActivity;->checkedArray:Ljava/util/ArrayList;

    .line 73
    sput-boolean v2, Lcom/moonpi/swiftnotes/MainActivity;->deleteActive:Z

    .line 76
    sput-boolean v2, Lcom/moonpi/swiftnotes/MainActivity;->searchActive:Z

    const/16 v1, 0x157

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/moonpi/swiftnotes/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 55
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 79
    const/4 v1, -0x1

    iput v1, p0, Lcom/moonpi/swiftnotes/MainActivity;->lastFirstVisibleItem:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$000(Lcom/moonpi/swiftnotes/MainActivity;)I
    .locals 4

    .prologue
    invoke-static {}, Lcom/moonpi/swiftnotes/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 55
    iget v1, p0, Lcom/moonpi/swiftnotes/MainActivity;->lastFirstVisibleItem:I

    const/16 v2, 0x14b

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method static synthetic access$002(Lcom/moonpi/swiftnotes/MainActivity;I)I
    .locals 3

    .prologue
    invoke-static {}, Lcom/moonpi/swiftnotes/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 55
    iput p1, p0, Lcom/moonpi/swiftnotes/MainActivity;->lastFirstVisibleItem:I

    const/16 v1, 0x14c

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return p1
.end method

.method static synthetic access$100()Landroid/widget/ListView;
    .locals 4

    .prologue
    invoke-static {}, Lcom/moonpi/swiftnotes/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 55
    sget-object v1, Lcom/moonpi/swiftnotes/MainActivity;->listView:Landroid/widget/ListView;

    const/16 v2, 0x14d

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$200(Lcom/moonpi/swiftnotes/MainActivity;)Ljava/util/ArrayList;
    .locals 4

    .prologue
    invoke-static {}, Lcom/moonpi/swiftnotes/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/moonpi/swiftnotes/MainActivity;->realIndexesOfSearchResults:Ljava/util/ArrayList;

    const/16 v2, 0x150

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$202(Lcom/moonpi/swiftnotes/MainActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3

    .prologue
    invoke-static {}, Lcom/moonpi/swiftnotes/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 55
    iput-object p1, p0, Lcom/moonpi/swiftnotes/MainActivity;->realIndexesOfSearchResults:Ljava/util/ArrayList;

    const/16 v1, 0x14e

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-object p1
.end method

.method static synthetic access$300()Lorg/json/JSONArray;
    .locals 4

    .prologue
    invoke-static {}, Lcom/moonpi/swiftnotes/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 55
    sget-object v1, Lcom/moonpi/swiftnotes/MainActivity;->notes:Lorg/json/JSONArray;

    const/16 v2, 0x14f

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$302(Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 3

    .prologue
    invoke-static {}, Lcom/moonpi/swiftnotes/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 55
    sput-object p0, Lcom/moonpi/swiftnotes/MainActivity;->notes:Lorg/json/JSONArray;

    const/16 v1, 0x154

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-object p0
.end method

.method static synthetic access$400()Lcom/moonpi/swiftnotes/NoteAdapter;
    .locals 4

    .prologue
    invoke-static {}, Lcom/moonpi/swiftnotes/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 55
    sget-object v1, Lcom/moonpi/swiftnotes/MainActivity;->adapter:Lcom/moonpi/swiftnotes/NoteAdapter;

    const/16 v2, 0x151

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$402(Lcom/moonpi/swiftnotes/NoteAdapter;)Lcom/moonpi/swiftnotes/NoteAdapter;
    .locals 3

    .prologue
    invoke-static {}, Lcom/moonpi/swiftnotes/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 55
    sput-object p0, Lcom/moonpi/swiftnotes/MainActivity;->adapter:Lcom/moonpi/swiftnotes/NoteAdapter;

    const/16 v1, 0x155

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-object p0
.end method

.method static synthetic access$500()Ljava/io/File;
    .locals 4

    .prologue
    invoke-static {}, Lcom/moonpi/swiftnotes/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 55
    sget-object v1, Lcom/moonpi/swiftnotes/MainActivity;->backupPath:Ljava/io/File;

    const/16 v2, 0x152

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$600()Ljava/io/File;
    .locals 4

    .prologue
    invoke-static {}, Lcom/moonpi/swiftnotes/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 55
    sget-object v1, Lcom/moonpi/swiftnotes/MainActivity;->localPath:Ljava/io/File;

    const/16 v2, 0x153

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$700(Lcom/moonpi/swiftnotes/MainActivity;)Landroid/widget/TextView;
    .locals 4

    .prologue
    invoke-static {}, Lcom/moonpi/swiftnotes/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/moonpi/swiftnotes/MainActivity;->noNotes:Landroid/widget/TextView;

    const/16 v2, 0x156

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public static getBackupPath()Ljava/io/File;
    .locals 4

    .prologue
    invoke-static {}, Lcom/moonpi/swiftnotes/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 1003
    sget-object v1, Lcom/moonpi/swiftnotes/MainActivity;->backupPath:Ljava/io/File;

    const/16 v2, 0x13e

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public static getLocalPath()Ljava/io/File;
    .locals 4

    .prologue
    invoke-static {}, Lcom/moonpi/swiftnotes/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 998
    sget-object v1, Lcom/moonpi/swiftnotes/MainActivity;->localPath:Ljava/io/File;

    const/16 v2, 0x13d

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public static setFavourite(Landroid/content/Context;ZI)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/MainActivity;->$jacocoInit()[Z

    move-result-object v3

    .line 870
    const/4 v1, 0x0

    const/16 v2, 0x101

    const/4 v4, 0x1

    :try_start_0
    aput-boolean v4, v3, v2

    .line 874
    sget-object v2, Lcom/moonpi/swiftnotes/MainActivity;->notes:Lorg/json/JSONArray;

    invoke-virtual {v2, p2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 878
    .local v1, "newFavourite":Lorg/json/JSONObject;
    const/16 v2, 0x102

    aput-boolean v6, v3, v2

    .line 880
    .end local v1    # "newFavourite":Lorg/json/JSONObject;
    :goto_0
    if-nez v1, :cond_0

    const/16 v2, 0x105

    aput-boolean v6, v3, v2

    .line 956
    :goto_1
    const/16 v2, 0x126

    aput-boolean v6, v3, v2

    return-void

    .line 876
    :catch_0
    move-exception v2

    const/16 v4, 0x103

    aput-boolean v6, v3, v4

    .line 877
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    const/16 v2, 0x104

    aput-boolean v6, v3, v2

    goto :goto_0

    .line 881
    :cond_0
    if-nez p1, :cond_1

    const/16 v2, 0x106

    aput-boolean v6, v3, v2

    .line 943
    :try_start_1
    const-string v2, "favoured"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const/16 v2, 0x120

    const/4 v4, 0x1

    aput-boolean v4, v3, v2

    .line 944
    sget-object v2, Lcom/moonpi/swiftnotes/MainActivity;->notes:Lorg/json/JSONArray;

    invoke-virtual {v2, p2, v1}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_5

    .line 948
    const/16 v2, 0x121

    aput-boolean v6, v3, v2

    .line 950
    :goto_2
    sget-object v2, Lcom/moonpi/swiftnotes/MainActivity;->adapter:Lcom/moonpi/swiftnotes/NoteAdapter;

    invoke-virtual {v2}, Lcom/moonpi/swiftnotes/NoteAdapter;->notifyDataSetChanged()V

    const/16 v2, 0x124

    aput-boolean v6, v3, v2

    .line 954
    :goto_3
    sget-object v2, Lcom/moonpi/swiftnotes/MainActivity;->localPath:Ljava/io/File;

    sget-object v4, Lcom/moonpi/swiftnotes/MainActivity;->notes:Lorg/json/JSONArray;

    invoke-static {v2, v4}, Lcom/moonpi/swiftnotes/DataUtils;->saveData(Ljava/io/File;Lorg/json/JSONArray;)Z

    const/16 v2, 0x125

    aput-boolean v6, v3, v2

    goto :goto_1

    .line 881
    :cond_1
    const/16 v2, 0x107

    const/4 v4, 0x1

    :try_start_2
    aput-boolean v4, v3, v2

    .line 884
    const-string v2, "favoured"

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 888
    const/16 v2, 0x108

    aput-boolean v6, v3, v2

    .line 892
    :goto_4
    if-gtz p2, :cond_2

    const/16 v2, 0x10b

    aput-boolean v6, v3, v2

    .line 930
    :try_start_3
    sget-object v2, Lcom/moonpi/swiftnotes/MainActivity;->notes:Lorg/json/JSONArray;

    invoke-virtual {v2, p2, v1}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_4

    .line 934
    const/16 v2, 0x11c

    aput-boolean v6, v3, v2

    .line 936
    :goto_5
    sget-object v2, Lcom/moonpi/swiftnotes/MainActivity;->adapter:Lcom/moonpi/swiftnotes/NoteAdapter;

    invoke-virtual {v2}, Lcom/moonpi/swiftnotes/NoteAdapter;->notifyDataSetChanged()V

    const/16 v2, 0x11f

    aput-boolean v6, v3, v2

    goto :goto_3

    .line 886
    :catch_1
    move-exception v2

    const/16 v4, 0x109

    aput-boolean v6, v3, v4

    .line 887
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    const/16 v2, 0x10a

    aput-boolean v6, v3, v2

    goto :goto_4

    .line 892
    :cond_2
    const/16 v2, 0x10c

    aput-boolean v6, v3, v2

    .line 893
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    const/16 v2, 0x10d

    const/4 v5, 0x1

    :try_start_4
    aput-boolean v5, v3, v2

    .line 896
    const/4 v2, 0x0

    invoke-virtual {v4, v2, v1}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    .line 900
    const/16 v2, 0x10e

    aput-boolean v6, v3, v2

    .line 903
    :goto_6
    const/16 v2, 0x111

    aput-boolean v6, v3, v2

    .local v0, "i":I
    :goto_7
    sget-object v2, Lcom/moonpi/swiftnotes/MainActivity;->notes:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 904
    if-ne v0, p2, :cond_3

    const/16 v2, 0x112

    aput-boolean v6, v3, v2

    .line 903
    .end local v0    # "i":I
    :goto_8
    add-int/lit8 v0, v0, 0x1

    .restart local v0    # "i":I
    const/16 v2, 0x117

    aput-boolean v6, v3, v2

    goto :goto_7

    .line 898
    .end local v0    # "i":I
    :catch_2
    move-exception v2

    const/16 v5, 0x10f

    aput-boolean v6, v3, v5

    .line 899
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    const/16 v2, 0x110

    aput-boolean v6, v3, v2

    goto :goto_6

    .line 904
    .restart local v0    # "i":I
    :cond_3
    const/16 v2, 0x113

    const/4 v5, 0x1

    :try_start_5
    aput-boolean v5, v3, v2

    .line 906
    sget-object v2, Lcom/moonpi/swiftnotes/MainActivity;->notes:Lorg/json/JSONArray;

    .end local v0    # "i":I
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_3

    .line 910
    const/16 v2, 0x114

    aput-boolean v6, v3, v2

    goto :goto_8

    .line 908
    :catch_3
    move-exception v2

    const/16 v5, 0x115

    aput-boolean v6, v3, v5

    .line 909
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    const/16 v2, 0x116

    aput-boolean v6, v3, v2

    goto :goto_8

    .line 915
    .restart local v0    # "i":I
    :cond_4
    sput-object v4, Lcom/moonpi/swiftnotes/MainActivity;->notes:Lorg/json/JSONArray;

    const/16 v2, 0x118

    aput-boolean v6, v3, v2

    .line 916
    new-instance v2, Lcom/moonpi/swiftnotes/NoteAdapter;

    .end local v0    # "i":I
    sget-object v4, Lcom/moonpi/swiftnotes/MainActivity;->notes:Lorg/json/JSONArray;

    invoke-direct {v2, p0, v4}, Lcom/moonpi/swiftnotes/NoteAdapter;-><init>(Landroid/content/Context;Lorg/json/JSONArray;)V

    sput-object v2, Lcom/moonpi/swiftnotes/MainActivity;->adapter:Lcom/moonpi/swiftnotes/NoteAdapter;

    const/16 v2, 0x119

    aput-boolean v6, v3, v2

    .line 917
    sget-object v2, Lcom/moonpi/swiftnotes/MainActivity;->listView:Landroid/widget/ListView;

    sget-object v4, Lcom/moonpi/swiftnotes/MainActivity;->adapter:Lcom/moonpi/swiftnotes/NoteAdapter;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/16 v2, 0x11a

    aput-boolean v6, v3, v2

    .line 920
    sget-object v2, Lcom/moonpi/swiftnotes/MainActivity;->listView:Landroid/widget/ListView;

    new-instance v4, Lcom/moonpi/swiftnotes/MainActivity$14;

    invoke-direct {v4}, Lcom/moonpi/swiftnotes/MainActivity$14;-><init>()V

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 925
    const/16 v2, 0x11b

    aput-boolean v6, v3, v2

    goto/16 :goto_3

    .line 932
    :catch_4
    move-exception v2

    const/16 v4, 0x11d

    aput-boolean v6, v3, v4

    .line 933
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    const/16 v2, 0x11e

    aput-boolean v6, v3, v2

    goto/16 :goto_5

    .line 946
    :catch_5
    move-exception v2

    const/16 v4, 0x122

    aput-boolean v6, v3, v4

    .line 947
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    const/16 v2, 0x123

    aput-boolean v6, v3, v2

    goto/16 :goto_2
.end method


# virtual methods
.method protected initDialogs(Landroid/content/Context;)V
    .locals 9

    .prologue
    const v8, 0x7f05003e

    const v7, 0x7f05002e

    const v6, 0x104000a

    const/4 v5, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 262
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f050015

    const/16 v3, 0x2f

    aput-boolean v5, v0, v3

    .line 263
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f050022

    const/16 v3, 0x30

    aput-boolean v5, v0, v3

    .line 264
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/moonpi/swiftnotes/MainActivity$5;

    invoke-direct {v2, p0}, Lcom/moonpi/swiftnotes/MainActivity$5;-><init>(Lcom/moonpi/swiftnotes/MainActivity;)V

    const/16 v3, 0x31

    aput-boolean v5, v0, v3

    .line 265
    invoke-virtual {v1, v8, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/moonpi/swiftnotes/MainActivity$4;

    invoke-direct {v2, p0}, Lcom/moonpi/swiftnotes/MainActivity$4;-><init>(Lcom/moonpi/swiftnotes/MainActivity;)V

    const/16 v3, 0x32

    aput-boolean v5, v0, v3

    .line 292
    invoke-virtual {v1, v7, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/16 v2, 0x33

    aput-boolean v5, v0, v2

    .line 298
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/moonpi/swiftnotes/MainActivity;->backupCheckDialog:Landroid/app/AlertDialog;

    const/16 v1, 0x34

    aput-boolean v5, v0, v1

    .line 302
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f050021

    const/16 v3, 0x35

    aput-boolean v5, v0, v3

    .line 303
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f050020

    const/16 v4, 0x36

    aput-boolean v5, v0, v4

    .line 304
    invoke-virtual {p0, v3}, Lcom/moonpi/swiftnotes/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/moonpi/swiftnotes/MainActivity;->backupPath:Ljava/io/File;

    const/16 v4, 0x37

    aput-boolean v5, v0, v4

    .line 305
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x38

    aput-boolean v5, v0, v3

    .line 304
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/moonpi/swiftnotes/MainActivity$6;

    invoke-direct {v2, p0}, Lcom/moonpi/swiftnotes/MainActivity$6;-><init>(Lcom/moonpi/swiftnotes/MainActivity;)V

    const/16 v3, 0x39

    aput-boolean v5, v0, v3

    .line 306
    invoke-virtual {v1, v6, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/16 v2, 0x3a

    aput-boolean v5, v0, v2

    .line 312
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/moonpi/swiftnotes/MainActivity;->backupOKDialog:Landroid/app/AlertDialog;

    const/16 v1, 0x3b

    aput-boolean v5, v0, v1

    .line 322
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f05001c

    const/16 v3, 0x3c

    aput-boolean v5, v0, v3

    .line 323
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f050023

    const/16 v3, 0x3d

    aput-boolean v5, v0, v3

    .line 324
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/moonpi/swiftnotes/MainActivity$8;

    invoke-direct {v2, p0}, Lcom/moonpi/swiftnotes/MainActivity$8;-><init>(Lcom/moonpi/swiftnotes/MainActivity;)V

    const/16 v3, 0x3e

    aput-boolean v5, v0, v3

    .line 325
    invoke-virtual {v1, v8, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/moonpi/swiftnotes/MainActivity$7;

    invoke-direct {v2, p0}, Lcom/moonpi/swiftnotes/MainActivity$7;-><init>(Lcom/moonpi/swiftnotes/MainActivity;)V

    const/16 v3, 0x3f

    aput-boolean v5, v0, v3

    .line 367
    invoke-virtual {v1, v7, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/16 v2, 0x40

    aput-boolean v5, v0, v2

    .line 373
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/moonpi/swiftnotes/MainActivity;->restoreCheckDialog:Landroid/app/AlertDialog;

    const/16 v1, 0x41

    aput-boolean v5, v0, v1

    .line 377
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f05002a

    const/16 v3, 0x42

    aput-boolean v5, v0, v3

    .line 378
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f050029

    const/16 v3, 0x43

    aput-boolean v5, v0, v3

    .line 379
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/moonpi/swiftnotes/MainActivity$9;

    invoke-direct {v2, p0}, Lcom/moonpi/swiftnotes/MainActivity$9;-><init>(Lcom/moonpi/swiftnotes/MainActivity;)V

    const/16 v3, 0x44

    aput-boolean v5, v0, v3

    .line 380
    invoke-virtual {v1, v6, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/16 v2, 0x45

    aput-boolean v5, v0, v2

    .line 386
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/moonpi/swiftnotes/MainActivity;->restoreFailedDialog:Landroid/app/AlertDialog;

    .line 387
    const/16 v1, 0x46

    aput-boolean v5, v0, v1

    return-void
.end method

.method protected initToolbar()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/MainActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 195
    iget-object v3, p0, Lcom/moonpi/swiftnotes/MainActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    const v4, 0x7f05001f

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    const/16 v3, 0x22

    aput-boolean v5, v2, v3

    .line 198
    iget-object v3, p0, Lcom/moonpi/swiftnotes/MainActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    const v4, 0x7f0d0002

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/Toolbar;->inflateMenu(I)V

    const/16 v3, 0x23

    aput-boolean v5, v2, v3

    .line 201
    iget-object v3, p0, Lcom/moonpi/swiftnotes/MainActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v3, p0}, Landroid/support/v7/widget/Toolbar;->setOnMenuItemClickListener(Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;)V

    const/16 v3, 0x24

    aput-boolean v5, v2, v3

    .line 203
    iget-object v3, p0, Lcom/moonpi/swiftnotes/MainActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v3}, Landroid/support/v7/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 205
    .local v0, "menu":Landroid/view/Menu;
    if-nez v0, :cond_0

    const/16 v3, 0x25

    aput-boolean v5, v2, v3

    .line 247
    :goto_0
    const/16 v3, 0x2e

    aput-boolean v5, v2, v3

    return-void

    .line 205
    :cond_0
    const/16 v3, 0x26

    aput-boolean v5, v2, v3

    .line 207
    const v3, 0x7f0b0082

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/moonpi/swiftnotes/MainActivity;->searchMenu:Landroid/view/MenuItem;

    .line 209
    iget-object v3, p0, Lcom/moonpi/swiftnotes/MainActivity;->searchMenu:Landroid/view/MenuItem;

    if-nez v3, :cond_1

    const/16 v3, 0x27

    aput-boolean v5, v2, v3

    goto :goto_0

    :cond_1
    const/16 v3, 0x28

    aput-boolean v5, v2, v3

    .line 211
    iget-object v3, p0, Lcom/moonpi/swiftnotes/MainActivity;->searchMenu:Landroid/view/MenuItem;

    invoke-static {v3}, Landroid/support/v4/view/MenuItemCompat;->getActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/SearchView;

    .line 213
    .local v1, "searchView":Landroid/support/v7/widget/SearchView;
    if-nez v1, :cond_2

    const/16 v3, 0x29

    aput-boolean v5, v2, v3

    goto :goto_0

    :cond_2
    const/16 v3, 0x2a

    aput-boolean v5, v2, v3

    .line 215
    const v3, 0x7f05001d

    invoke-virtual {p0, v3}, Lcom/moonpi/swiftnotes/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    const/16 v3, 0x2b

    aput-boolean v5, v2, v3

    .line 216
    invoke-virtual {v1, p0}, Landroid/support/v7/widget/SearchView;->setOnQueryTextListener(Landroid/support/v7/widget/SearchView$OnQueryTextListener;)V

    const/16 v3, 0x2c

    aput-boolean v5, v2, v3

    .line 218
    iget-object v3, p0, Lcom/moonpi/swiftnotes/MainActivity;->searchMenu:Landroid/view/MenuItem;

    new-instance v4, Lcom/moonpi/swiftnotes/MainActivity$3;

    invoke-direct {v4, p0}, Lcom/moonpi/swiftnotes/MainActivity$3;-><init>(Lcom/moonpi/swiftnotes/MainActivity;)V

    invoke-static {v3, v4}, Landroid/support/v4/view/MenuItemCompat;->setOnActionExpandListener(Landroid/view/MenuItem;Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;)Landroid/view/MenuItem;

    const/16 v3, 0x2d

    aput-boolean v5, v2, v3

    goto :goto_0
.end method

.method protected newNoteButtonVisibility(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 651
    if-eqz p1, :cond_0

    const/16 v1, 0x92

    aput-boolean v4, v0, v1

    .line 652
    iget-object v1, p0, Lcom/moonpi/swiftnotes/MainActivity;->newNote:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/16 v1, 0x93

    aput-boolean v4, v0, v1

    .line 653
    iget-object v1, p0, Lcom/moonpi/swiftnotes/MainActivity;->newNote:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/moonpi/swiftnotes/MainActivity;->newNoteButtonBaseYCoordinate:F

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    const/16 v1, 0x94

    aput-boolean v4, v0, v1

    .line 658
    :goto_0
    const/16 v1, 0x97

    aput-boolean v4, v0, v1

    return-void

    .line 655
    :cond_0
    iget-object v1, p0, Lcom/moonpi/swiftnotes/MainActivity;->newNote:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/16 v1, 0x95

    aput-boolean v4, v0, v1

    .line 656
    iget-object v1, p0, Lcom/moonpi/swiftnotes/MainActivity;->newNote:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/moonpi/swiftnotes/MainActivity;->newNoteButtonBaseYCoordinate:F

    const/high16 v3, 0x43fa0000    # 500.0f

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    const/16 v1, 0x96

    aput-boolean v4, v0, v1

    goto :goto_0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/MainActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 565
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v3, 0x7f0b007e

    if-ne v1, v3, :cond_0

    const/16 v1, 0x84

    aput-boolean v0, v2, v1

    .line 566
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f050024

    const/16 v4, 0x85

    aput-boolean v0, v2, v4

    .line 567
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x104000a

    new-instance v4, Lcom/moonpi/swiftnotes/MainActivity$13;

    invoke-direct {v4, p0, p1}, Lcom/moonpi/swiftnotes/MainActivity$13;-><init>(Lcom/moonpi/swiftnotes/MainActivity;Landroid/view/ActionMode;)V

    const/16 v5, 0x86

    aput-boolean v0, v2, v5

    .line 568
    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v3, 0x1040000

    new-instance v4, Lcom/moonpi/swiftnotes/MainActivity$12;

    invoke-direct {v4, p0}, Lcom/moonpi/swiftnotes/MainActivity$12;-><init>(Lcom/moonpi/swiftnotes/MainActivity;)V

    const/16 v5, 0x87

    aput-boolean v0, v2, v5

    .line 606
    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/16 v3, 0x88

    aput-boolean v0, v2, v3

    .line 612
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 614
    const/16 v1, 0x89

    aput-boolean v0, v2, v1

    .line 617
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    const/16 v3, 0x8a

    aput-boolean v0, v2, v3

    move v0, v1

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const v5, 0xea60

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/MainActivity;->$jacocoInit()[Z

    move-result-object v4

    .line 751
    const/4 v2, -0x1

    if-ne p2, v2, :cond_a

    .line 753
    sget-boolean v2, Lcom/moonpi/swiftnotes/MainActivity;->searchActive:Z

    if-nez v2, :cond_0

    const/16 v2, 0xbc

    aput-boolean v6, v4, v2

    .line 757
    :goto_0
    const/4 v0, 0x0

    .line 758
    .local v0, "mBundle":Landroid/os/Bundle;
    if-nez p3, :cond_2

    const/16 v2, 0xc0

    aput-boolean v6, v4, v2

    .line 761
    :goto_1
    if-nez v0, :cond_3

    const/16 v2, 0xc3

    aput-boolean v6, v4, v2

    .line 839
    :goto_2
    const/16 v2, 0xf1

    aput-boolean v6, v4, v2

    .line 859
    :goto_3
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 860
    const/16 v2, 0x100

    aput-boolean v6, v4, v2

    return-void

    .line 753
    .end local v0    # "mBundle":Landroid/os/Bundle;
    :cond_0
    iget-object v2, p0, Lcom/moonpi/swiftnotes/MainActivity;->searchMenu:Landroid/view/MenuItem;

    if-nez v2, :cond_1

    const/16 v2, 0xbd

    aput-boolean v6, v4, v2

    goto :goto_0

    :cond_1
    const/16 v2, 0xbe

    aput-boolean v6, v4, v2

    .line 754
    iget-object v2, p0, Lcom/moonpi/swiftnotes/MainActivity;->searchMenu:Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->collapseActionView()Z

    const/16 v2, 0xbf

    aput-boolean v6, v4, v2

    goto :goto_0

    .line 758
    .restart local v0    # "mBundle":Landroid/os/Bundle;
    :cond_2
    const/16 v2, 0xc1

    aput-boolean v6, v4, v2

    .line 759
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/16 v2, 0xc2

    aput-boolean v6, v4, v2

    goto :goto_1

    .line 763
    :cond_3
    if-ne p1, v5, :cond_7

    .line 764
    const/16 v2, 0xc4

    const/4 v5, 0x1

    :try_start_0
    aput-boolean v5, v4, v2

    .line 768
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .local v1, "newNoteObject":Lorg/json/JSONObject;
    const/16 v2, 0xc5

    const/4 v3, 0x1

    :try_start_1
    aput-boolean v3, v4, v2

    .line 769
    const-string v2, "title"

    const-string v3, "title"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/16 v2, 0xc6

    const/4 v3, 0x1

    aput-boolean v3, v4, v2

    .line 770
    const-string v2, "body"

    const-string v3, "body"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/16 v2, 0xc7

    const/4 v3, 0x1

    aput-boolean v3, v4, v2

    .line 771
    const-string v2, "colour"

    const-string v3, "colour"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/16 v2, 0xc8

    const/4 v3, 0x1

    aput-boolean v3, v4, v2

    .line 772
    const-string v2, "favoured"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const/16 v2, 0xc9

    const/4 v3, 0x1

    aput-boolean v3, v4, v2

    .line 773
    const-string v2, "fontSize"

    const-string v3, "fontSize"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/16 v2, 0xca

    const/4 v3, 0x1

    aput-boolean v3, v4, v2

    .line 774
    const-string v2, "hideBody"

    const-string v3, "hideBody"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const/16 v2, 0xcb

    const/4 v3, 0x1

    aput-boolean v3, v4, v2

    .line 776
    sget-object v2, Lcom/moonpi/swiftnotes/MainActivity;->notes:Lorg/json/JSONArray;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    .line 780
    const/16 v2, 0xcc

    aput-boolean v6, v4, v2

    .line 783
    .end local v1    # "newNoteObject":Lorg/json/JSONObject;
    :goto_4
    if-nez v1, :cond_4

    const/16 v2, 0xcf

    aput-boolean v6, v4, v2

    .line 802
    :goto_5
    const/16 v2, 0xdc

    aput-boolean v6, v4, v2

    goto/16 :goto_2

    .line 778
    :catch_0
    move-exception v2

    move-object v1, v3

    :goto_6
    const/16 v3, 0xcd

    aput-boolean v6, v4, v3

    .line 779
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    const/16 v2, 0xce

    aput-boolean v6, v4, v2

    goto :goto_4

    .line 783
    :cond_4
    const/16 v2, 0xd0

    aput-boolean v6, v4, v2

    .line 784
    sget-object v2, Lcom/moonpi/swiftnotes/MainActivity;->adapter:Lcom/moonpi/swiftnotes/NoteAdapter;

    invoke-virtual {v2}, Lcom/moonpi/swiftnotes/NoteAdapter;->notifyDataSetChanged()V

    const/16 v2, 0xd1

    aput-boolean v6, v4, v2

    .line 786
    sget-object v2, Lcom/moonpi/swiftnotes/MainActivity;->localPath:Ljava/io/File;

    sget-object v3, Lcom/moonpi/swiftnotes/MainActivity;->notes:Lorg/json/JSONArray;

    invoke-static {v2, v3}, Lcom/moonpi/swiftnotes/DataUtils;->saveData(Ljava/io/File;Lorg/json/JSONArray;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v3, 0xd2

    aput-boolean v6, v4, v3

    .line 788
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_5

    const/16 v2, 0xd3

    aput-boolean v6, v4, v2

    .line 796
    :goto_7
    sget-object v2, Lcom/moonpi/swiftnotes/MainActivity;->notes:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_6

    const/16 v2, 0xd9

    aput-boolean v6, v4, v2

    .line 797
    iget-object v2, p0, Lcom/moonpi/swiftnotes/MainActivity;->noNotes:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v2, 0xda

    aput-boolean v6, v4, v2

    goto :goto_5

    .line 788
    :cond_5
    const/16 v2, 0xd4

    aput-boolean v6, v4, v2

    .line 789
    invoke-virtual {p0}, Lcom/moonpi/swiftnotes/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0xd5

    aput-boolean v6, v4, v3

    .line 790
    invoke-virtual {p0}, Lcom/moonpi/swiftnotes/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f050038

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xd6

    aput-boolean v6, v4, v5

    .line 789
    invoke-static {v2, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    const/16 v3, 0xd7

    aput-boolean v6, v4, v3

    .line 792
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    const/16 v2, 0xd8

    aput-boolean v6, v4, v2

    goto :goto_7

    .line 800
    :cond_6
    iget-object v2, p0, Lcom/moonpi/swiftnotes/MainActivity;->noNotes:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v2, 0xdb

    aput-boolean v6, v4, v2

    goto/16 :goto_5

    .line 806
    :cond_7
    const/16 v2, 0xdd

    const/4 v5, 0x1

    :try_start_2
    aput-boolean v5, v4, v2

    .line 810
    sget-object v2, Lcom/moonpi/swiftnotes/MainActivity;->notes:Lorg/json/JSONArray;

    invoke-virtual {v2, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    .restart local v1    # "newNoteObject":Lorg/json/JSONObject;
    const/16 v2, 0xde

    const/4 v3, 0x1

    :try_start_3
    aput-boolean v3, v4, v2

    .line 811
    const-string v2, "title"

    const-string v3, "title"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/16 v2, 0xdf

    const/4 v3, 0x1

    aput-boolean v3, v4, v2

    .line 812
    const-string v2, "body"

    const-string v3, "body"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/16 v2, 0xe0

    const/4 v3, 0x1

    aput-boolean v3, v4, v2

    .line 813
    const-string v2, "colour"

    const-string v3, "colour"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/16 v2, 0xe1

    const/4 v3, 0x1

    aput-boolean v3, v4, v2

    .line 814
    const-string v2, "fontSize"

    const-string v3, "fontSize"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/16 v2, 0xe2

    const/4 v3, 0x1

    aput-boolean v3, v4, v2

    .line 815
    const-string v2, "hideBody"

    const-string v3, "hideBody"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const/16 v2, 0xe3

    const/4 v3, 0x1

    aput-boolean v3, v4, v2

    .line 818
    sget-object v2, Lcom/moonpi/swiftnotes/MainActivity;->notes:Lorg/json/JSONArray;

    invoke-virtual {v2, p1, v1}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    .line 822
    const/16 v2, 0xe4

    aput-boolean v6, v4, v2

    .line 825
    .end local v1    # "newNoteObject":Lorg/json/JSONObject;
    :goto_8
    if-nez v1, :cond_8

    const/16 v2, 0xe7

    aput-boolean v6, v4, v2

    goto/16 :goto_2

    .line 820
    :catch_1
    move-exception v2

    move-object v1, v3

    :goto_9
    const/16 v3, 0xe5

    aput-boolean v6, v4, v3

    .line 821
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    const/16 v2, 0xe6

    aput-boolean v6, v4, v2

    goto :goto_8

    .line 825
    :cond_8
    const/16 v2, 0xe8

    aput-boolean v6, v4, v2

    .line 826
    sget-object v2, Lcom/moonpi/swiftnotes/MainActivity;->adapter:Lcom/moonpi/swiftnotes/NoteAdapter;

    invoke-virtual {v2}, Lcom/moonpi/swiftnotes/NoteAdapter;->notifyDataSetChanged()V

    const/16 v2, 0xe9

    aput-boolean v6, v4, v2

    .line 828
    sget-object v2, Lcom/moonpi/swiftnotes/MainActivity;->localPath:Ljava/io/File;

    sget-object v3, Lcom/moonpi/swiftnotes/MainActivity;->notes:Lorg/json/JSONArray;

    invoke-static {v2, v3}, Lcom/moonpi/swiftnotes/DataUtils;->saveData(Ljava/io/File;Lorg/json/JSONArray;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v3, 0xea

    aput-boolean v6, v4, v3

    .line 830
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_9

    const/16 v2, 0xeb

    aput-boolean v6, v4, v2

    goto/16 :goto_2

    :cond_9
    const/16 v2, 0xec

    aput-boolean v6, v4, v2

    .line 831
    invoke-virtual {p0}, Lcom/moonpi/swiftnotes/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0xed

    aput-boolean v6, v4, v3

    .line 832
    invoke-virtual {p0}, Lcom/moonpi/swiftnotes/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f05003b

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xee

    aput-boolean v6, v4, v5

    .line 831
    invoke-static {v2, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    const/16 v3, 0xef

    aput-boolean v6, v4, v3

    .line 834
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    const/16 v2, 0xf0

    aput-boolean v6, v4, v2

    goto/16 :goto_2

    .line 842
    .end local v0    # "mBundle":Landroid/os/Bundle;
    :cond_a
    if-eqz p2, :cond_b

    const/16 v2, 0xf2

    aput-boolean v6, v4, v2

    goto/16 :goto_3

    .line 843
    :cond_b
    const/16 v2, 0xf3

    aput-boolean v6, v4, v2

    .line 846
    if-nez p3, :cond_c

    const/16 v2, 0xf4

    aput-boolean v6, v4, v2

    goto/16 :goto_3

    :cond_c
    const-string v2, "request"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    const/16 v2, 0xf5

    aput-boolean v6, v4, v2

    goto/16 :goto_3

    :cond_d
    if-eq p1, v5, :cond_e

    const/16 v2, 0xf6

    aput-boolean v6, v4, v2

    goto/16 :goto_3

    :cond_e
    const/16 v2, 0xf7

    aput-boolean v6, v4, v2

    .line 847
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .restart local v0    # "mBundle":Landroid/os/Bundle;
    const/16 v2, 0xf8

    aput-boolean v6, v4, v2

    .line 850
    if-nez v0, :cond_f

    const/16 v2, 0xf9

    aput-boolean v6, v4, v2

    goto/16 :goto_3

    :cond_f
    const-string v2, "request"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "discard"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    const/16 v2, 0xfa

    aput-boolean v6, v4, v2

    goto/16 :goto_3

    :cond_10
    const/16 v2, 0xfb

    aput-boolean v6, v4, v2

    .line 851
    invoke-virtual {p0}, Lcom/moonpi/swiftnotes/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0xfc

    aput-boolean v6, v4, v3

    .line 852
    invoke-virtual {p0}, Lcom/moonpi/swiftnotes/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f050037

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xfd

    aput-boolean v6, v4, v5

    .line 851
    invoke-static {v2, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    const/16 v3, 0xfe

    aput-boolean v6, v4, v3

    .line 854
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    const/16 v2, 0xff

    aput-boolean v6, v4, v2

    goto/16 :goto_3

    .line 820
    .restart local v1    # "newNoteObject":Lorg/json/JSONObject;
    :catch_2
    move-exception v2

    goto/16 :goto_9

    .line 778
    :catch_3
    move-exception v2

    goto/16 :goto_6
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 964
    sget-boolean v1, Lcom/moonpi/swiftnotes/MainActivity;->searchActive:Z

    if-nez v1, :cond_0

    const/16 v1, 0x127

    aput-boolean v2, v0, v1

    .line 969
    :goto_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    .line 970
    const/16 v1, 0x12b

    aput-boolean v2, v0, v1

    :goto_1
    return-void

    .line 964
    :cond_0
    iget-object v1, p0, Lcom/moonpi/swiftnotes/MainActivity;->searchMenu:Landroid/view/MenuItem;

    if-nez v1, :cond_1

    const/16 v1, 0x128

    aput-boolean v2, v0, v1

    goto :goto_0

    :cond_1
    const/16 v1, 0x129

    aput-boolean v2, v0, v1

    .line 965
    iget-object v1, p0, Lcom/moonpi/swiftnotes/MainActivity;->searchMenu:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 966
    const/16 v1, 0x12a

    aput-boolean v2, v0, v1

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 980
    iget-object v1, p0, Lcom/moonpi/swiftnotes/MainActivity;->backupCheckDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_0

    const/16 v1, 0x12c

    aput-boolean v2, v0, v1

    .line 983
    :goto_0
    iget-object v1, p0, Lcom/moonpi/swiftnotes/MainActivity;->backupOKDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_2

    const/16 v1, 0x130

    aput-boolean v2, v0, v1

    .line 986
    :goto_1
    iget-object v1, p0, Lcom/moonpi/swiftnotes/MainActivity;->restoreCheckDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_4

    const/16 v1, 0x134

    aput-boolean v2, v0, v1

    .line 989
    :goto_2
    iget-object v1, p0, Lcom/moonpi/swiftnotes/MainActivity;->restoreFailedDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_6

    const/16 v1, 0x138

    aput-boolean v2, v0, v1

    .line 992
    :goto_3
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 993
    const/16 v1, 0x13c

    aput-boolean v2, v0, v1

    return-void

    .line 980
    :cond_0
    iget-object v1, p0, Lcom/moonpi/swiftnotes/MainActivity;->backupCheckDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x12d

    aput-boolean v2, v0, v1

    goto :goto_0

    :cond_1
    const/16 v1, 0x12e

    aput-boolean v2, v0, v1

    .line 981
    iget-object v1, p0, Lcom/moonpi/swiftnotes/MainActivity;->backupCheckDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    const/16 v1, 0x12f

    aput-boolean v2, v0, v1

    goto :goto_0

    .line 983
    :cond_2
    iget-object v1, p0, Lcom/moonpi/swiftnotes/MainActivity;->backupOKDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_3

    const/16 v1, 0x131

    aput-boolean v2, v0, v1

    goto :goto_1

    :cond_3
    const/16 v1, 0x132

    aput-boolean v2, v0, v1

    .line 984
    iget-object v1, p0, Lcom/moonpi/swiftnotes/MainActivity;->backupOKDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    const/16 v1, 0x133

    aput-boolean v2, v0, v1

    goto :goto_1

    .line 986
    :cond_4
    iget-object v1, p0, Lcom/moonpi/swiftnotes/MainActivity;->restoreCheckDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_5

    const/16 v1, 0x135

    aput-boolean v2, v0, v1

    goto :goto_2

    :cond_5
    const/16 v1, 0x136

    aput-boolean v2, v0, v1

    .line 987
    iget-object v1, p0, Lcom/moonpi/swiftnotes/MainActivity;->restoreCheckDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    const/16 v1, 0x137

    aput-boolean v2, v0, v1

    goto :goto_2

    .line 989
    :cond_6
    iget-object v1, p0, Lcom/moonpi/swiftnotes/MainActivity;->restoreFailedDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_7

    const/16 v1, 0x139

    aput-boolean v2, v0, v1

    goto :goto_3

    :cond_7
    const/16 v1, 0x13a

    aput-boolean v2, v0, v1

    .line 990
    iget-object v1, p0, Lcom/moonpi/swiftnotes/MainActivity;->restoreFailedDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    const/16 v1, 0x13b

    aput-boolean v2, v0, v1

    goto :goto_3
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    .prologue
    const/16 v9, 0xc

    const/4 v8, 0x7

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/MainActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 87
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    aput-boolean v5, v2, v5

    .line 90
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/moonpi/swiftnotes/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "notes.json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/moonpi/swiftnotes/MainActivity;->localPath:Ljava/io/File;

    const/4 v1, 0x2

    aput-boolean v5, v2, v1

    .line 92
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Swiftnotes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-boolean v5, v2, v6

    .line 95
    invoke-static {}, Lcom/moonpi/swiftnotes/DataUtils;->isExternalStorageReadable()Z

    move-result v3

    if-nez v3, :cond_0

    aput-boolean v5, v2, v7

    .line 98
    :goto_0
    new-instance v3, Ljava/io/File;

    const-string v4, "swiftnotes_backup.json"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v3, Lcom/moonpi/swiftnotes/MainActivity;->backupPath:Ljava/io/File;

    .line 101
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v1, v3, :cond_3

    const/16 v1, 0x9

    aput-boolean v5, v2, v1

    .line 102
    invoke-virtual {p0, v9}, Lcom/moonpi/swiftnotes/MainActivity;->setRequestedOrientation(I)V

    const/16 v1, 0xa

    aput-boolean v5, v2, v1

    .line 109
    :goto_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    sput-object v1, Lcom/moonpi/swiftnotes/MainActivity;->notes:Lorg/json/JSONArray;

    aput-boolean v5, v2, v9

    .line 112
    sget-object v1, Lcom/moonpi/swiftnotes/MainActivity;->localPath:Ljava/io/File;

    invoke-static {v1}, Lcom/moonpi/swiftnotes/DataUtils;->retrieveData(Ljava/io/File;)Lorg/json/JSONArray;

    move-result-object v0

    .line 115
    .local v0, "tempNotes":Lorg/json/JSONArray;
    if-nez v0, :cond_4

    const/16 v1, 0xd

    aput-boolean v5, v2, v1

    .line 118
    :goto_2
    const v1, 0x7f03001c

    invoke-virtual {p0, v1}, Lcom/moonpi/swiftnotes/MainActivity;->setContentView(I)V

    const/16 v1, 0xf

    aput-boolean v5, v2, v1

    .line 121
    const v1, 0x7f0b005a

    invoke-virtual {p0, v1}, Lcom/moonpi/swiftnotes/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/Toolbar;

    iput-object v1, p0, Lcom/moonpi/swiftnotes/MainActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    const/16 v1, 0x10

    aput-boolean v5, v2, v1

    .line 122
    const v1, 0x7f0b005b

    invoke-virtual {p0, v1}, Lcom/moonpi/swiftnotes/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    sput-object v1, Lcom/moonpi/swiftnotes/MainActivity;->listView:Landroid/widget/ListView;

    const/16 v1, 0x11

    aput-boolean v5, v2, v1

    .line 123
    const v1, 0x7f0b005c

    invoke-virtual {p0, v1}, Lcom/moonpi/swiftnotes/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/moonpi/swiftnotes/MainActivity;->newNote:Landroid/widget/ImageButton;

    const/16 v1, 0x12

    aput-boolean v5, v2, v1

    .line 124
    const v1, 0x7f0b005d

    invoke-virtual {p0, v1}, Lcom/moonpi/swiftnotes/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/moonpi/swiftnotes/MainActivity;->noNotes:Landroid/widget/TextView;

    .line 126
    iget-object v1, p0, Lcom/moonpi/swiftnotes/MainActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-nez v1, :cond_5

    const/16 v1, 0x13

    aput-boolean v5, v2, v1

    .line 129
    :goto_3
    iget-object v1, p0, Lcom/moonpi/swiftnotes/MainActivity;->newNote:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getY()F

    move-result v1

    iput v1, p0, Lcom/moonpi/swiftnotes/MainActivity;->newNoteButtonBaseYCoordinate:F

    const/16 v1, 0x16

    aput-boolean v5, v2, v1

    .line 132
    new-instance v1, Lcom/moonpi/swiftnotes/NoteAdapter;

    invoke-virtual {p0}, Lcom/moonpi/swiftnotes/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/moonpi/swiftnotes/MainActivity;->notes:Lorg/json/JSONArray;

    invoke-direct {v1, v3, v4}, Lcom/moonpi/swiftnotes/NoteAdapter;-><init>(Landroid/content/Context;Lorg/json/JSONArray;)V

    sput-object v1, Lcom/moonpi/swiftnotes/MainActivity;->adapter:Lcom/moonpi/swiftnotes/NoteAdapter;

    const/16 v1, 0x17

    aput-boolean v5, v2, v1

    .line 133
    sget-object v1, Lcom/moonpi/swiftnotes/MainActivity;->listView:Landroid/widget/ListView;

    sget-object v3, Lcom/moonpi/swiftnotes/MainActivity;->adapter:Lcom/moonpi/swiftnotes/NoteAdapter;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/16 v1, 0x18

    aput-boolean v5, v2, v1

    .line 136
    sget-object v1, Lcom/moonpi/swiftnotes/MainActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/16 v1, 0x19

    aput-boolean v5, v2, v1

    .line 137
    sget-object v1, Lcom/moonpi/swiftnotes/MainActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setChoiceMode(I)V

    const/16 v1, 0x1a

    aput-boolean v5, v2, v1

    .line 138
    sget-object v1, Lcom/moonpi/swiftnotes/MainActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    const/16 v1, 0x1b

    aput-boolean v5, v2, v1

    .line 139
    sget-object v1, Lcom/moonpi/swiftnotes/MainActivity;->listView:Landroid/widget/ListView;

    new-instance v3, Lcom/moonpi/swiftnotes/MainActivity$1;

    invoke-direct {v3, p0}, Lcom/moonpi/swiftnotes/MainActivity$1;-><init>(Lcom/moonpi/swiftnotes/MainActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    const/16 v1, 0x1c

    aput-boolean v5, v2, v1

    .line 168
    iget-object v1, p0, Lcom/moonpi/swiftnotes/MainActivity;->newNote:Landroid/widget/ImageButton;

    new-instance v3, Lcom/moonpi/swiftnotes/MainActivity$2;

    invoke-direct {v3, p0}, Lcom/moonpi/swiftnotes/MainActivity$2;-><init>(Lcom/moonpi/swiftnotes/MainActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v1, 0x1d

    aput-boolean v5, v2, v1

    .line 180
    sget-object v1, Lcom/moonpi/swiftnotes/MainActivity;->notes:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_6

    const/16 v1, 0x1e

    aput-boolean v5, v2, v1

    .line 181
    iget-object v1, p0, Lcom/moonpi/swiftnotes/MainActivity;->noNotes:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v1, 0x1f

    aput-boolean v5, v2, v1

    .line 186
    :goto_4
    invoke-virtual {p0, p0}, Lcom/moonpi/swiftnotes/MainActivity;->initDialogs(Landroid/content/Context;)V

    .line 187
    const/16 v1, 0x21

    aput-boolean v5, v2, v1

    return-void

    .line 95
    .end local v0    # "tempNotes":Lorg/json/JSONArray;
    :cond_0
    invoke-static {}, Lcom/moonpi/swiftnotes/DataUtils;->isExternalStorageWritable()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x5

    aput-boolean v5, v2, v3

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x6

    aput-boolean v5, v2, v3

    goto/16 :goto_0

    :cond_2
    aput-boolean v5, v2, v8

    .line 96
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    const/16 v3, 0x8

    aput-boolean v5, v2, v3

    goto/16 :goto_0

    .line 106
    :cond_3
    invoke-virtual {p0, v8}, Lcom/moonpi/swiftnotes/MainActivity;->setRequestedOrientation(I)V

    const/16 v1, 0xb

    aput-boolean v5, v2, v1

    goto/16 :goto_1

    .line 116
    .restart local v0    # "tempNotes":Lorg/json/JSONArray;
    :cond_4
    sput-object v0, Lcom/moonpi/swiftnotes/MainActivity;->notes:Lorg/json/JSONArray;

    const/16 v1, 0xe

    aput-boolean v5, v2, v1

    goto/16 :goto_2

    .line 126
    :cond_5
    const/16 v1, 0x14

    aput-boolean v5, v2, v1

    .line 127
    invoke-virtual {p0}, Lcom/moonpi/swiftnotes/MainActivity;->initToolbar()V

    const/16 v1, 0x15

    aput-boolean v5, v2, v1

    goto/16 :goto_3

    .line 184
    :cond_6
    iget-object v1, p0, Lcom/moonpi/swiftnotes/MainActivity;->noNotes:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v1, 0x20

    aput-boolean v5, v2, v1

    goto :goto_4
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 623
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const/high16 v2, 0x7f0d0000

    invoke-virtual {v1, v2, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 624
    sput-boolean v3, Lcom/moonpi/swiftnotes/MainActivity;->deleteActive:Z

    const/16 v1, 0x8b

    aput-boolean v3, v0, v1

    .line 625
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/moonpi/swiftnotes/MainActivity;->newNoteButtonVisibility(Z)V

    const/16 v1, 0x8c

    aput-boolean v3, v0, v1

    .line 626
    sget-object v1, Lcom/moonpi/swiftnotes/MainActivity;->adapter:Lcom/moonpi/swiftnotes/NoteAdapter;

    invoke-virtual {v1}, Lcom/moonpi/swiftnotes/NoteAdapter;->notifyDataSetChanged()V

    .line 628
    const/16 v1, 0x8d

    aput-boolean v3, v0, v1

    return v3
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 634
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/moonpi/swiftnotes/MainActivity;->checkedArray:Ljava/util/ArrayList;

    .line 635
    const/4 v1, 0x0

    sput-boolean v1, Lcom/moonpi/swiftnotes/MainActivity;->deleteActive:Z

    const/16 v1, 0x8e

    aput-boolean v2, v0, v1

    .line 636
    invoke-virtual {p0, v2}, Lcom/moonpi/swiftnotes/MainActivity;->newNoteButtonVisibility(Z)V

    const/16 v1, 0x8f

    aput-boolean v2, v0, v1

    .line 637
    sget-object v1, Lcom/moonpi/swiftnotes/MainActivity;->adapter:Lcom/moonpi/swiftnotes/NoteAdapter;

    invoke-virtual {v1}, Lcom/moonpi/swiftnotes/NoteAdapter;->notifyDataSetChanged()V

    .line 638
    const/16 v1, 0x90

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 6

    .prologue
    const/4 v3, -0x1

    const/4 v5, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/MainActivity;->$jacocoInit()[Z

    move-result-object v4

    .line 532
    if-eqz p5, :cond_0

    const/16 v2, 0x77

    aput-boolean v5, v4, v2

    .line 533
    sget-object v2, Lcom/moonpi/swiftnotes/MainActivity;->checkedArray:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x78

    aput-boolean v5, v4, v2

    .line 553
    .local v0, "i":I
    .local v1, "index":I
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/moonpi/swiftnotes/MainActivity;->checkedArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f050017

    invoke-virtual {p0, v3}, Lcom/moonpi/swiftnotes/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v2, 0x82

    aput-boolean v5, v4, v2

    .line 554
    sget-object v2, Lcom/moonpi/swiftnotes/MainActivity;->adapter:Lcom/moonpi/swiftnotes/NoteAdapter;

    invoke-virtual {v2}, Lcom/moonpi/swiftnotes/NoteAdapter;->notifyDataSetChanged()V

    .line 555
    const/16 v2, 0x83

    aput-boolean v5, v4, v2

    return-void

    .line 537
    .end local v0    # "i":I
    .end local v1    # "index":I
    :cond_0
    const/16 v2, 0x79

    aput-boolean v5, v4, v2

    .line 540
    const/4 v1, 0x0

    const/16 v2, 0x7a

    aput-boolean v5, v4, v2

    .restart local v0    # "i":I
    :goto_1
    sget-object v2, Lcom/moonpi/swiftnotes/MainActivity;->checkedArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    const/16 v2, 0x7b

    aput-boolean v5, v4, v2

    move v1, v3

    .line 548
    .restart local v1    # "index":I
    :goto_2
    if-ne v1, v3, :cond_3

    const/16 v2, 0x7f

    aput-boolean v5, v4, v2

    goto :goto_0

    .line 540
    .end local v1    # "index":I
    :cond_1
    const/16 v2, 0x7c

    aput-boolean v5, v4, v2

    .line 541
    sget-object v2, Lcom/moonpi/swiftnotes/MainActivity;->checkedArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne p2, v2, :cond_2

    .line 543
    .restart local v1    # "index":I
    const/16 v2, 0x7d

    aput-boolean v5, v4, v2

    goto :goto_2

    .line 540
    .end local v1    # "index":I
    :cond_2
    add-int/lit8 v0, v1, 0x1

    const/16 v2, 0x7e

    aput-boolean v5, v4, v2

    move v1, v0

    goto :goto_1

    .line 548
    .restart local v1    # "index":I
    :cond_3
    const/16 v2, 0x80

    aput-boolean v5, v4, v2

    .line 549
    sget-object v2, Lcom/moonpi/swiftnotes/MainActivity;->checkedArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/16 v2, 0x81

    aput-boolean v5, v4, v2

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
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
    const/4 v7, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/MainActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 407
    new-instance v2, Landroid/content/Intent;

    const-class v0, Lcom/moonpi/swiftnotes/EditActivity;

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v0, 0x4b

    aput-boolean v7, v1, v0

    .line 408
    const/high16 v0, 0x10000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 411
    sget-boolean v0, Lcom/moonpi/swiftnotes/MainActivity;->searchActive:Z

    if-nez v0, :cond_0

    const/16 v0, 0x4c

    aput-boolean v7, v1, v0

    .line 441
    :try_start_0
    const-string v0, "title"

    sget-object v3, Lcom/moonpi/swiftnotes/MainActivity;->notes:Lorg/json/JSONArray;

    invoke-virtual {v3, p3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "title"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x5c

    const/4 v3, 0x1

    aput-boolean v3, v1, v0

    .line 442
    const-string v0, "body"

    sget-object v3, Lcom/moonpi/swiftnotes/MainActivity;->notes:Lorg/json/JSONArray;

    invoke-virtual {v3, p3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "body"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x5d

    const/4 v3, 0x1

    aput-boolean v3, v1, v0

    .line 443
    const-string v0, "colour"

    sget-object v3, Lcom/moonpi/swiftnotes/MainActivity;->notes:Lorg/json/JSONArray;

    invoke-virtual {v3, p3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "colour"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x5e

    const/4 v3, 0x1

    aput-boolean v3, v1, v0

    .line 444
    const-string v0, "fontSize"

    sget-object v3, Lcom/moonpi/swiftnotes/MainActivity;->notes:Lorg/json/JSONArray;

    invoke-virtual {v3, p3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "fontSize"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v0, 0x5f

    const/4 v3, 0x1

    aput-boolean v3, v1, v0

    .line 446
    sget-object v0, Lcom/moonpi/swiftnotes/MainActivity;->notes:Lorg/json/JSONArray;

    invoke-virtual {v0, p3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "hideBody"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 447
    const-string v0, "hideBody"

    sget-object v3, Lcom/moonpi/swiftnotes/MainActivity;->notes:Lorg/json/JSONArray;

    const/16 v4, 0x60

    const/4 v5, 0x1

    aput-boolean v5, v1, v4

    .line 448
    invoke-virtual {v3, p3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "hideBody"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    const/16 v4, 0x61

    const/4 v5, 0x1

    aput-boolean v5, v1, v4

    .line 447
    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v0, 0x62

    const/4 v3, 0x1

    aput-boolean v3, v1, v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 456
    :goto_0
    const/16 v0, 0x64

    aput-boolean v7, v1, v0

    .line 458
    :goto_1
    const-string v0, "requestCode"

    invoke-virtual {v2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v0, 0x67

    aput-boolean v7, v1, v0

    .line 459
    invoke-virtual {p0, v2, p3}, Lcom/moonpi/swiftnotes/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const/16 v0, 0x68

    aput-boolean v7, v1, v0

    .line 461
    :goto_2
    const/16 v0, 0x69

    aput-boolean v7, v1, v0

    return-void

    .line 411
    :cond_0
    const/16 v0, 0x4d

    aput-boolean v7, v1, v0

    .line 412
    iget-object v0, p0, Lcom/moonpi/swiftnotes/MainActivity;->realIndexesOfSearchResults:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v0, 0x4e

    const/4 v4, 0x1

    :try_start_1
    aput-boolean v4, v1, v0

    .line 416
    const-string v0, "title"

    sget-object v4, Lcom/moonpi/swiftnotes/MainActivity;->notes:Lorg/json/JSONArray;

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "title"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x4f

    const/4 v4, 0x1

    aput-boolean v4, v1, v0

    .line 417
    const-string v0, "body"

    sget-object v4, Lcom/moonpi/swiftnotes/MainActivity;->notes:Lorg/json/JSONArray;

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "body"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x50

    const/4 v4, 0x1

    aput-boolean v4, v1, v0

    .line 418
    const-string v0, "colour"

    sget-object v4, Lcom/moonpi/swiftnotes/MainActivity;->notes:Lorg/json/JSONArray;

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "colour"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x51

    const/4 v4, 0x1

    aput-boolean v4, v1, v0

    .line 419
    const-string v0, "fontSize"

    sget-object v4, Lcom/moonpi/swiftnotes/MainActivity;->notes:Lorg/json/JSONArray;

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "fontSize"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v0, 0x52

    const/4 v4, 0x1

    aput-boolean v4, v1, v0

    .line 421
    sget-object v0, Lcom/moonpi/swiftnotes/MainActivity;->notes:Lorg/json/JSONArray;

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v4, "hideBody"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 422
    const-string v0, "hideBody"

    sget-object v4, Lcom/moonpi/swiftnotes/MainActivity;->notes:Lorg/json/JSONArray;

    const/16 v5, 0x53

    const/4 v6, 0x1

    aput-boolean v6, v1, v5

    .line 423
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "hideBody"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    const/16 v5, 0x54

    const/4 v6, 0x1

    aput-boolean v6, v1, v5

    .line 422
    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v0, 0x55

    const/4 v4, 0x1

    aput-boolean v4, v1, v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 431
    :goto_3
    const/16 v0, 0x57

    aput-boolean v7, v1, v0

    .line 433
    :goto_4
    const-string v0, "requestCode"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v0, 0x5a

    aput-boolean v7, v1, v0

    .line 434
    invoke-virtual {p0, v2, v3}, Lcom/moonpi/swiftnotes/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 435
    const/16 v0, 0x5b

    aput-boolean v7, v1, v0

    goto/16 :goto_2

    .line 427
    :cond_1
    :try_start_2
    const-string v0, "hideBody"

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v0, 0x56

    const/4 v4, 0x1

    aput-boolean v4, v1, v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 429
    :catch_0
    move-exception v0

    const/16 v4, 0x58

    aput-boolean v7, v1, v4

    .line 430
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/16 v0, 0x59

    aput-boolean v7, v1, v0

    goto :goto_4

    .line 452
    :cond_2
    :try_start_3
    const-string v0, "hideBody"

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v0, 0x63

    const/4 v3, 0x1

    aput-boolean v3, v1, v0
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 454
    :catch_1
    move-exception v0

    const/16 v3, 0x65

    aput-boolean v7, v1, v3

    .line 455
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/16 v0, 0x66

    aput-boolean v7, v1, v0

    goto/16 :goto_1
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/MainActivity;->$jacocoInit()[Z

    move-result-object v3

    .line 471
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 474
    .local v0, "id":I
    const v2, 0x7f0b0083

    if-ne v0, v2, :cond_0

    const/16 v2, 0x6a

    aput-boolean v1, v3, v2

    .line 475
    iget-object v2, p0, Lcom/moonpi/swiftnotes/MainActivity;->backupCheckDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 476
    const/16 v2, 0x6b

    aput-boolean v1, v3, v2

    .line 518
    :goto_0
    return v1

    .line 480
    :cond_0
    const v2, 0x7f0b0084

    if-ne v0, v2, :cond_1

    const/16 v2, 0x6c

    aput-boolean v1, v3, v2

    .line 481
    iget-object v2, p0, Lcom/moonpi/swiftnotes/MainActivity;->restoreCheckDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 482
    const/16 v2, 0x6d

    aput-boolean v1, v3, v2

    goto :goto_0

    .line 487
    :cond_1
    const v2, 0x7f0b0085

    if-ne v0, v2, :cond_2

    const/16 v2, 0x6e

    aput-boolean v1, v3, v2

    .line 488
    invoke-virtual {p0}, Lcom/moonpi/swiftnotes/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x6f

    aput-boolean v1, v3, v4

    .line 490
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f050028

    const/16 v6, 0x70

    aput-boolean v1, v3, v6

    .line 491
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f050027

    const/16 v6, 0x71

    aput-boolean v1, v3, v6

    .line 492
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f05003e

    new-instance v6, Lcom/moonpi/swiftnotes/MainActivity$11;

    invoke-direct {v6, p0, v2}, Lcom/moonpi/swiftnotes/MainActivity$11;-><init>(Lcom/moonpi/swiftnotes/MainActivity;Ljava/lang/String;)V

    const/16 v2, 0x72

    aput-boolean v1, v3, v2

    .line 493
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v4, 0x7f05002e

    new-instance v5, Lcom/moonpi/swiftnotes/MainActivity$10;

    invoke-direct {v5, p0}, Lcom/moonpi/swiftnotes/MainActivity$10;-><init>(Lcom/moonpi/swiftnotes/MainActivity;)V

    const/16 v6, 0x73

    aput-boolean v1, v3, v6

    .line 507
    invoke-virtual {v2, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/16 v4, 0x74

    aput-boolean v1, v3, v4

    .line 513
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 515
    const/16 v2, 0x75

    aput-boolean v1, v3, v2

    goto :goto_0

    .line 518
    :cond_2
    const/4 v2, 0x0

    const/16 v4, 0x76

    aput-boolean v1, v3, v4

    move v1, v2

    goto :goto_0
.end method

.method protected onPause()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/MainActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 1007
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 1009
    const-string v1, "jacoco"

    const/16 v3, 0x13f

    aput-boolean v9, v2, v3

    .line 1012
    const-string v3, "StorageSt"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x140

    aput-boolean v9, v2, v3

    .line 1013
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

    const/16 v4, 0x141

    aput-boolean v9, v2, v4

    .line 1014
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x142

    const/4 v5, 0x1

    :try_start_0
    aput-boolean v5, v2, v3

    .line 1016
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    const/16 v3, 0x143

    const/4 v5, 0x1

    aput-boolean v5, v2, v3

    .line 1017
    const-string v3, "com.vladium.emma.rt.RT"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1018
    .local v0, "emmaRTClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "dumpCoverageData"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const/16 v7, 0x144

    const/4 v8, 0x1

    aput-boolean v8, v2, v7

    .line 1019
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/16 v6, 0x145

    const/4 v7, 0x1

    aput-boolean v7, v2, v6

    .line 1018
    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/16 v5, 0x146

    const/4 v6, 0x1

    aput-boolean v6, v2, v5

    .line 1021
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

    const/16 v3, 0x147

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 1022
    const-string v3, "generateCoverageReport: ok"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1026
    const/16 v1, 0x14a

    aput-boolean v9, v2, v1

    return-void

    .line 1023
    :catch_0
    move-exception v1

    const/16 v3, 0x148

    aput-boolean v9, v2, v3

    .line 1024
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Is emma jar on classpath?"

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v1, 0x149

    aput-boolean v9, v2, v1

    throw v3
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4

    .prologue
    invoke-static {}, Lcom/moonpi/swiftnotes/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 642
    const/4 v1, 0x0

    const/16 v2, 0x91

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/MainActivity;->$jacocoInit()[Z

    move-result-object v5

    .line 668
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .local v2, "s":Ljava/lang/String;
    const/16 v4, 0x98

    aput-boolean v9, v5, v4

    .line 671
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    const/16 v4, 0x99

    aput-boolean v9, v5, v4

    .line 673
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    const/16 v4, 0x9a

    aput-boolean v9, v5, v4

    .line 674
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/moonpi/swiftnotes/MainActivity;->realIndexesOfSearchResults:Ljava/util/ArrayList;

    const/16 v4, 0x9b

    aput-boolean v9, v5, v4

    .line 677
    const/16 v4, 0x9c

    aput-boolean v9, v5, v4

    move v0, v3

    :goto_0
    sget-object v4, Lcom/moonpi/swiftnotes/MainActivity;->notes:Lorg/json/JSONArray;

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 678
    const/4 v1, 0x0

    const/16 v4, 0x9d

    const/4 v7, 0x1

    :try_start_0
    aput-boolean v7, v5, v4

    .line 682
    sget-object v4, Lcom/moonpi/swiftnotes/MainActivity;->notes:Lorg/json/JSONArray;

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 686
    .local v1, "note":Lorg/json/JSONObject;
    const/16 v4, 0x9e

    aput-boolean v9, v5, v4

    .line 690
    .end local v1    # "note":Lorg/json/JSONObject;
    :goto_1
    if-nez v1, :cond_0

    const/16 v4, 0xa1

    aput-boolean v9, v5, v4

    .line 677
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .local v0, "i":I
    const/16 v4, 0xac

    aput-boolean v9, v5, v4

    goto :goto_0

    .line 684
    .end local v0    # "i":I
    :catch_0
    move-exception v4

    const/16 v7, 0x9f

    aput-boolean v9, v5, v7

    .line 685
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    const/16 v4, 0xa0

    aput-boolean v9, v5, v4

    goto :goto_1

    .line 690
    :cond_0
    const/16 v4, 0xa2

    const/4 v7, 0x1

    :try_start_1
    aput-boolean v7, v5, v4

    .line 692
    const-string v4, "title"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0xa3

    const/4 v7, 0x1

    aput-boolean v7, v5, v4

    .line 695
    :goto_3
    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const/16 v4, 0xa7

    const/4 v7, 0x1

    aput-boolean v7, v5, v4

    .line 696
    iget-object v4, p0, Lcom/moonpi/swiftnotes/MainActivity;->realIndexesOfSearchResults:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v4, 0xa8

    const/4 v7, 0x1

    aput-boolean v7, v5, v4
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 701
    :goto_4
    const/16 v4, 0xa9

    aput-boolean v9, v5, v4

    goto :goto_2

    .line 692
    :cond_1
    :try_start_2
    const-string v4, "body"

    const/16 v7, 0xa4

    const/4 v8, 0x1

    aput-boolean v8, v5, v7

    .line 693
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const/16 v4, 0xa5

    const/4 v7, 0x1

    aput-boolean v7, v5, v4
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 699
    :catch_1
    move-exception v4

    const/16 v7, 0xaa

    aput-boolean v9, v5, v7

    .line 700
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    const/16 v4, 0xab

    aput-boolean v9, v5, v4

    goto :goto_2

    .line 693
    :cond_2
    const/16 v4, 0xa6

    const/4 v7, 0x1

    :try_start_3
    aput-boolean v7, v5, v4
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 706
    :cond_3
    new-instance v4, Lcom/moonpi/swiftnotes/NoteAdapter;

    invoke-virtual {p0}, Lcom/moonpi/swiftnotes/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7, v6}, Lcom/moonpi/swiftnotes/NoteAdapter;-><init>(Landroid/content/Context;Lorg/json/JSONArray;)V

    const/16 v6, 0xad

    aput-boolean v9, v5, v6

    .line 707
    sget-object v6, Lcom/moonpi/swiftnotes/MainActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v6, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 708
    const/16 v4, 0xae

    aput-boolean v9, v5, v4

    .line 720
    :goto_5
    const/16 v4, 0xb5

    aput-boolean v9, v5, v4

    return v3

    .line 712
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/moonpi/swiftnotes/MainActivity;->realIndexesOfSearchResults:Ljava/util/ArrayList;

    const/16 v4, 0xaf

    aput-boolean v9, v5, v4

    .line 713
    const/16 v4, 0xb0

    aput-boolean v9, v5, v4

    move v0, v3

    :goto_6
    sget-object v4, Lcom/moonpi/swiftnotes/MainActivity;->notes:Lorg/json/JSONArray;

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_5

    const/16 v4, 0xb1

    aput-boolean v9, v5, v4

    .line 714
    iget-object v4, p0, Lcom/moonpi/swiftnotes/MainActivity;->realIndexesOfSearchResults:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 713
    add-int/lit8 v0, v0, 0x1

    .restart local v0    # "i":I
    const/16 v4, 0xb2

    aput-boolean v9, v5, v4

    goto :goto_6

    .line 716
    .end local v0    # "i":I
    :cond_5
    new-instance v4, Lcom/moonpi/swiftnotes/NoteAdapter;

    invoke-virtual {p0}, Lcom/moonpi/swiftnotes/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Lcom/moonpi/swiftnotes/MainActivity;->notes:Lorg/json/JSONArray;

    invoke-direct {v4, v6, v7}, Lcom/moonpi/swiftnotes/NoteAdapter;-><init>(Landroid/content/Context;Lorg/json/JSONArray;)V

    sput-object v4, Lcom/moonpi/swiftnotes/MainActivity;->adapter:Lcom/moonpi/swiftnotes/NoteAdapter;

    const/16 v4, 0xb3

    aput-boolean v9, v5, v4

    .line 717
    sget-object v4, Lcom/moonpi/swiftnotes/MainActivity;->listView:Landroid/widget/ListView;

    sget-object v6, Lcom/moonpi/swiftnotes/MainActivity;->adapter:Lcom/moonpi/swiftnotes/NoteAdapter;

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/16 v4, 0xb4

    aput-boolean v9, v5, v4

    goto :goto_5
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 4

    .prologue
    invoke-static {}, Lcom/moonpi/swiftnotes/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 725
    const/4 v1, 0x0

    const/16 v2, 0xb6

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method protected searchEnded()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 735
    const/4 v1, 0x0

    sput-boolean v1, Lcom/moonpi/swiftnotes/MainActivity;->searchActive:Z

    const/16 v1, 0xb7

    aput-boolean v4, v0, v1

    .line 736
    new-instance v1, Lcom/moonpi/swiftnotes/NoteAdapter;

    invoke-virtual {p0}, Lcom/moonpi/swiftnotes/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/moonpi/swiftnotes/MainActivity;->notes:Lorg/json/JSONArray;

    invoke-direct {v1, v2, v3}, Lcom/moonpi/swiftnotes/NoteAdapter;-><init>(Landroid/content/Context;Lorg/json/JSONArray;)V

    sput-object v1, Lcom/moonpi/swiftnotes/MainActivity;->adapter:Lcom/moonpi/swiftnotes/NoteAdapter;

    const/16 v1, 0xb8

    aput-boolean v4, v0, v1

    .line 737
    sget-object v1, Lcom/moonpi/swiftnotes/MainActivity;->listView:Landroid/widget/ListView;

    sget-object v2, Lcom/moonpi/swiftnotes/MainActivity;->adapter:Lcom/moonpi/swiftnotes/NoteAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/16 v1, 0xb9

    aput-boolean v4, v0, v1

    .line 738
    sget-object v1, Lcom/moonpi/swiftnotes/MainActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setLongClickable(Z)V

    const/16 v1, 0xba

    aput-boolean v4, v0, v1

    .line 739
    invoke-virtual {p0, v4}, Lcom/moonpi/swiftnotes/MainActivity;->newNoteButtonVisibility(Z)V

    .line 740
    const/16 v1, 0xbb

    aput-boolean v4, v0, v1

    return-void
.end method

.method protected showBackupSuccessfulDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 391
    iget-object v1, p0, Lcom/moonpi/swiftnotes/MainActivity;->backupCheckDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    const/16 v1, 0x47

    aput-boolean v2, v0, v1

    .line 392
    iget-object v1, p0, Lcom/moonpi/swiftnotes/MainActivity;->backupOKDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 393
    const/16 v1, 0x48

    aput-boolean v2, v0, v1

    return-void
.end method

.method protected showRestoreFailedDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 397
    iget-object v1, p0, Lcom/moonpi/swiftnotes/MainActivity;->restoreCheckDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    const/16 v1, 0x49

    aput-boolean v2, v0, v1

    .line 398
    iget-object v1, p0, Lcom/moonpi/swiftnotes/MainActivity;->restoreFailedDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 399
    const/16 v1, 0x4a

    aput-boolean v2, v0, v1

    return-void
.end method
