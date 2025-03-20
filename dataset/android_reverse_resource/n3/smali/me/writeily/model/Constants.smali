.class public Lme/writeily/model/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final CONFIRM_DELETE_DIALOG_TAG:Ljava/lang/String; = "confirm_delete_dialog_tag"

.field public static final CONFIRM_OVERWRITE_DIALOG_TAG:Ljava/lang/String; = "confirm_overwrite_dialog_tag"

.field public static final CREATE_FOLDER_DIALOG_TAG:Ljava/lang/String; = "create_folder_dialog_tag"

.field public static final CURRENT_DIRECTORY_DIALOG_KEY:Ljava/lang/String; = "current_dir_folder_key"

.field public static final CURRENT_FOLDER:Ljava/lang/String; = "filesystem_current_folder"

.field public static final CURRENT_FOLDER_CHANGED:Ljava/lang/String; = "current_folder_changed"

.field public static final DARK_MD_HTML_PREFIX:Ljava/lang/String; = "<html><head><style type=\"text/css\">html,body{padding:4px 8px 4px 8px;font-family:\'sans-serif-light\';color:#ffffff;background-color:#303030;}h1,h2,h3,h4,h5,h6{font-family:\'sans-serif-condensed\';}a{color:#388E3C;text-decoration:underline;}a:visited{color:#dddddd;}img{height:auto;width:325px;margin:auto;}</style></head><body>"

.field public static final DEFAULT_WRITEILY_STORAGE_FOLDER:Ljava/lang/String;

.field public static final FILESYSTEM_ACTIVITY_ACCESS_TYPE_KEY:Ljava/lang/String; = "FILESYSTEM_ACTIVITY_ACCESS_TYPE_KEY"

.field public static final FILESYSTEM_FILE_ACCESS_TYPE:Ljava/lang/String; = "FILESYSTEM_FILE_ACCESS_TYPE"

.field public static final FILESYSTEM_FILE_NAME:Ljava/lang/String; = "filesystem_file_name"

.field public static final FILESYSTEM_FOLDER_ACCESS_TYPE:Ljava/lang/String; = "FILESYSTEM_FOLDER_ACCESS_TYPE"

.field public static final FILESYSTEM_IMPORT_DIALOG_TAG:Ljava/lang/String; = "filesystem_import_dialog_tag"

.field public static final FILESYSTEM_MOVE_DIALOG_TAG:Ljava/lang/String; = "filesystem_move_dialog_tag"

.field public static final FILESYSTEM_SELECT_FOLDER_ACCESS_TYPE:Ljava/lang/String; = "FILESYSTEM_SELECT_FOLDER_ACCESS_TYPE"

.field public static final FILESYSTEM_SELECT_FOLDER_FOR_WIDGET_ACCESS_TYPE:Ljava/lang/String; = "FILESYSTEM_SELECT_FOLDER_FOR_WIDGET_ACCESS_TYPE"

.field public static final FILESYSTEM_SELECT_FOLDER_TAG:Ljava/lang/String; = "filesystem_select_folder_dialog_tag"

.field public static final FOLDER_NAME:Ljava/lang/String; = "folder_name"

.field public static final INTENT_EXTRA_SHOW_ABOUT:Ljava/lang/String; = "writeily.intent.settings.ABOUT"

.field public static final KEYBOARD_SHORTCUTS:[Ljava/lang/String;

.field public static final KEYBOARD_SHORTCUTS_BRACKETS:[Ljava/lang/String;

.field public static final KEYBOARD_SMART_SHORTCUTS:[Ljava/lang/String;

.field public static final MAX_TITLE_LENGTH:I = 0x14

.field public static final MD_EXT:Ljava/lang/String; = ".md"

.field public static MD_EXTENSION:Ljava/util/regex/Pattern; = null

.field public static final MD_HTML_PREFIX:Ljava/lang/String; = "<html><head><style type=\"text/css\">html,body{padding:4px 8px 4px 8px;font-family:\'sans-serif-light\';color:#303030;}h1,h2,h3,h4,h5,h6{font-family:\'sans-serif-condensed\';}a{color:#388E3C;text-decoration:underline;}img{height:auto;width:325px;margin:auto;}</style></head><body>"

.field public static final MD_HTML_SUFFIX:Ljava/lang/String; = "</body></html>"

.field public static final MD_PREVIEW_BASE:Ljava/lang/String; = "md_preview_base"

.field public static final MD_PREVIEW_KEY:Ljava/lang/String; = "md_preview_key"

.field public static final NOTE_KEY:Ljava/lang/String; = "note_key"

.field public static final RENAME_DIALOG_TAG:Ljava/lang/String; = "RENAME_DIALOG_TAG"

.field public static final RENAME_NEW_NAME:Ljava/lang/String; = "RENAME_NEW_NAME"

.field public static final ROOT_DIR:Ljava/lang/String; = "filesystem_root_dir"

.field public static final SET_PIN_ACTION:Ljava/lang/String; = "set_pin"

.field public static final SET_PIN_REQUEST_CODE:I = 0x3

.field public static final SHARE_BROADCAST_TAG:Ljava/lang/String; = "share_broadcast_tag"

.field public static final SOURCE_FILE:Ljava/lang/String; = "SOURCE_FILE"

.field public static final TARGET_DIR:Ljava/lang/String; = "note_source_dir"

.field public static final UNSTYLED_HTML_PREFIX:Ljava/lang/String; = "<html><body>"

.field public static final USER_PIN_KEY:Ljava/lang/String; = "user_pin"

.field public static final UTF_CHARSET:Ljava/lang/String; = "utf-8"

.field public static final WIDGET_PATH:Ljava/lang/String; = "WIDGET_PATH"

.field public static final WRITEILY_FOLDER:Ljava/lang/String; = "/writeily/"


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lme/writeily/model/Constants;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x2e113183e0efd8aaL    # 8.642979706102092E-87

    const-string v2, "me/writeily/model/Constants"

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lme/writeily/model/Constants;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    invoke-static {}, Lme/writeily/model/Constants;->$jacocoInit()[Z

    move-result-object v0

    .line 11
    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "*"

    aput-object v2, v1, v6

    const-string v2, "-"

    aput-object v2, v1, v4

    const-string v2, "_"

    aput-object v2, v1, v5

    const-string v2, "#"

    aput-object v2, v1, v7

    const-string v2, "!"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, ":"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, ">"

    aput-object v3, v1, v2

    sput-object v1, Lme/writeily/model/Constants;->KEYBOARD_SHORTCUTS:[Ljava/lang/String;

    .line 12
    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "("

    aput-object v2, v1, v6

    const-string v2, ")"

    aput-object v2, v1, v4

    const-string v2, "["

    aput-object v2, v1, v5

    const-string v2, "]"

    aput-object v2, v1, v7

    sput-object v1, Lme/writeily/model/Constants;->KEYBOARD_SHORTCUTS_BRACKETS:[Ljava/lang/String;

    .line 13
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "()"

    aput-object v2, v1, v6

    const-string v2, "[]"

    aput-object v2, v1, v4

    sput-object v1, Lme/writeily/model/Constants;->KEYBOARD_SMART_SHORTCUTS:[Ljava/lang/String;

    aput-boolean v4, v0, v4

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/writeily/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lme/writeily/model/Constants;->DEFAULT_WRITEILY_STORAGE_FOLDER:Ljava/lang/String;

    aput-boolean v4, v0, v5

    .line 68
    const-string v1, "((?i)\\.md$)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lme/writeily/model/Constants;->MD_EXTENSION:Ljava/util/regex/Pattern;

    aput-boolean v4, v0, v7

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/model/Constants;->$jacocoInit()[Z

    move-result-object v0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
