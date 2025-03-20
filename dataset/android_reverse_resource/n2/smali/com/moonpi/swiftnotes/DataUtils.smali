.class Lcom/moonpi/swiftnotes/DataUtils;
.super Ljava/lang/Object;
.source "DataUtils.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field static final BACKUP_FILE_NAME:Ljava/lang/String; = "swiftnotes_backup.json"

.field static final BACKUP_FOLDER_PATH:Ljava/lang/String; = "/Swiftnotes"

.field static final NEW_NOTE_REQUEST:I = 0xea60

.field private static final NOTES_ARRAY_NAME:Ljava/lang/String; = "notes"

.field static final NOTES_FILE_NAME:Ljava/lang/String; = "notes.json"

.field static final NOTE_BODY:Ljava/lang/String; = "body"

.field static final NOTE_COLOUR:Ljava/lang/String; = "colour"

.field static final NOTE_FAVOURED:Ljava/lang/String; = "favoured"

.field static final NOTE_FONT_SIZE:Ljava/lang/String; = "fontSize"

.field static final NOTE_HIDE_BODY:Ljava/lang/String; = "hideBody"

.field static final NOTE_REQUEST_CODE:Ljava/lang/String; = "requestCode"

.field static final NOTE_TITLE:Ljava/lang/String; = "title"


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/moonpi/swiftnotes/DataUtils;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x2eedd33cd61d9d59L    # -3.448019674500177E82

    const-string v2, "com/moonpi/swiftnotes/DataUtils"

    const/16 v3, 0x6d

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/moonpi/swiftnotes/DataUtils;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/moonpi/swiftnotes/DataUtils;->$jacocoInit()[Z

    move-result-object v0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static deleteNotes(Lorg/json/JSONArray;Ljava/util/ArrayList;)Lorg/json/JSONArray;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/DataUtils;->$jacocoInit()[Z

    move-result-object v2

    .line 239
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    const/16 v1, 0x5b

    aput-boolean v5, v2, v1

    .line 242
    const/4 v0, 0x0

    const/16 v1, 0x5c

    aput-boolean v5, v2, v1

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/16 v1, 0x5d

    aput-boolean v5, v2, v1

    .line 244
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x5e

    aput-boolean v5, v2, v1

    .line 242
    :goto_1
    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x63

    aput-boolean v5, v2, v1

    goto :goto_0

    .line 244
    :cond_0
    const/16 v1, 0x5f

    const/4 v4, 0x1

    :try_start_0
    aput-boolean v4, v2, v1

    .line 246
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    const/16 v1, 0x60

    aput-boolean v5, v2, v1

    goto :goto_1

    .line 248
    :catch_0
    move-exception v1

    const/16 v4, 0x61

    aput-boolean v5, v2, v4

    .line 249
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    const/16 v1, 0x62

    aput-boolean v5, v2, v1

    goto :goto_1

    .line 255
    :cond_1
    const/16 v1, 0x64

    aput-boolean v5, v2, v1

    return-object v3
.end method

.method static isExternalStorageReadable()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/DataUtils;->$jacocoInit()[Z

    move-result-object v2

    .line 272
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x66

    aput-boolean v1, v2, v3

    .line 274
    const-string v3, "mounted"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v0, 0x67

    aput-boolean v1, v2, v0

    .line 275
    :goto_0
    const/16 v0, 0x6a

    aput-boolean v1, v2, v0

    move v0, v1

    .line 274
    :goto_1
    const/16 v3, 0x6c

    aput-boolean v1, v2, v3

    return v0

    :cond_0
    const-string v3, "mounted_ro"

    const/16 v4, 0x68

    aput-boolean v1, v2, v4

    .line 275
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x69

    aput-boolean v1, v2, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/16 v3, 0x6b

    aput-boolean v1, v2, v3

    goto :goto_1
.end method

.method static isExternalStorageWritable()Z
    .locals 4

    .prologue
    invoke-static {}, Lcom/moonpi/swiftnotes/DataUtils;->$jacocoInit()[Z

    move-result-object v0

    .line 264
    const-string v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x65

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method static retrieveData(Ljava/io/File;)Lorg/json/JSONArray;
    .locals 11

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/DataUtils;->$jacocoInit()[Z

    move-result-object v7

    .line 157
    const/16 v6, 0x33

    aput-boolean v10, v7, v6

    .line 160
    invoke-static {}, Lcom/moonpi/swiftnotes/MainActivity;->getBackupPath()Ljava/io/File;

    move-result-object v6

    if-ne p0, v6, :cond_2

    const/16 v6, 0x34

    aput-boolean v10, v7, v6

    .line 161
    invoke-static {}, Lcom/moonpi/swiftnotes/DataUtils;->isExternalStorageReadable()Z

    move-result v6

    if-nez v6, :cond_0

    const/16 v6, 0x35

    aput-boolean v10, v7, v6

    .line 185
    :goto_0
    const/4 v3, 0x0

    .line 186
    .local v3, "root":Lorg/json/JSONObject;
    const/16 v6, 0x3f

    const/4 v8, 0x1

    :try_start_0
    aput-boolean v8, v7, v6

    .line 190
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    const/16 v6, 0x40

    const/4 v8, 0x1

    :try_start_1
    aput-boolean v8, v7, v6

    .line 192
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v8, 0x41

    const/4 v9, 0x1

    aput-boolean v9, v7, v8

    .line 195
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_6

    const/16 v8, 0x42

    const/4 v9, 0x1

    aput-boolean v9, v7, v8

    .line 196
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x43

    const/4 v9, 0x1

    aput-boolean v9, v7, v8
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 201
    .end local v1    # "line":Ljava/lang/String;
    :catch_0
    move-exception v6

    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    :goto_2
    const/16 v8, 0x49

    const/4 v9, 0x1

    :try_start_2
    aput-boolean v9, v7, v8

    .line 202
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 206
    if-nez v0, :cond_8

    const/16 v6, 0x4a

    aput-boolean v10, v7, v6

    .line 217
    :goto_3
    if-nez v3, :cond_a

    const/16 v6, 0x55

    aput-boolean v10, v7, v6

    move-object v2, v5

    .line 227
    :goto_4
    const/16 v5, 0x5a

    aput-boolean v10, v7, v5

    move-object v5, v2

    :goto_5
    return-object v5

    .line 161
    .end local v3    # "root":Lorg/json/JSONObject;
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v6, 0x36

    aput-boolean v10, v7, v6

    goto :goto_0

    .line 162
    :cond_1
    const/16 v6, 0x37

    aput-boolean v10, v7, v6

    goto :goto_5

    .line 170
    :cond_2
    invoke-static {}, Lcom/moonpi/swiftnotes/MainActivity;->getLocalPath()Ljava/io/File;

    move-result-object v6

    if-eq p0, v6, :cond_3

    const/16 v6, 0x38

    aput-boolean v10, v7, v6

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x39

    aput-boolean v10, v7, v6

    goto :goto_0

    :cond_4
    const/16 v6, 0x3a

    aput-boolean v10, v7, v6

    .line 171
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .local v2, "notes":Lorg/json/JSONArray;
    const/16 v6, 0x3b

    aput-boolean v10, v7, v6

    .line 173
    invoke-static {p0, v2}, Lcom/moonpi/swiftnotes/DataUtils;->saveData(Ljava/io/File;Lorg/json/JSONArray;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/16 v8, 0x3c

    aput-boolean v10, v7, v8

    .line 176
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 177
    const/16 v5, 0x3d

    aput-boolean v10, v7, v5

    move-object v5, v2

    goto :goto_5

    .line 181
    :cond_5
    const/16 v6, 0x3e

    aput-boolean v10, v7, v6

    goto :goto_5

    .line 199
    .end local v2    # "notes":Lorg/json/JSONArray;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v3    # "root":Lorg/json/JSONObject;
    :cond_6
    :try_start_3
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 206
    .end local v3    # "root":Lorg/json/JSONObject;
    .local v4, "root":Lorg/json/JSONObject;
    if-nez v0, :cond_7

    const/16 v6, 0x44

    aput-boolean v10, v7, v6

    move-object v3, v4

    .end local v4    # "root":Lorg/json/JSONObject;
    .restart local v3    # "root":Lorg/json/JSONObject;
    goto :goto_3

    .end local v3    # "root":Lorg/json/JSONObject;
    .restart local v4    # "root":Lorg/json/JSONObject;
    :cond_7
    const/16 v6, 0x45

    const/4 v8, 0x1

    :try_start_4
    aput-boolean v8, v7, v6

    .line 208
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 212
    const/16 v6, 0x46

    aput-boolean v10, v7, v6

    move-object v3, v4

    .end local v4    # "root":Lorg/json/JSONObject;
    .restart local v3    # "root":Lorg/json/JSONObject;
    goto :goto_3

    .line 210
    .end local v3    # "root":Lorg/json/JSONObject;
    .restart local v4    # "root":Lorg/json/JSONObject;
    :catch_1
    move-exception v6

    const/16 v8, 0x47

    aput-boolean v10, v7, v8

    .line 211
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 212
    const/16 v6, 0x48

    aput-boolean v10, v7, v6

    move-object v3, v4

    .end local v4    # "root":Lorg/json/JSONObject;
    .restart local v3    # "root":Lorg/json/JSONObject;
    goto/16 :goto_3

    .line 206
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v1    # "line":Ljava/lang/String;
    :cond_8
    const/16 v6, 0x4b

    const/4 v8, 0x1

    :try_start_5
    aput-boolean v8, v7, v6

    .line 208
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 212
    const/16 v6, 0x4c

    aput-boolean v10, v7, v6

    goto/16 :goto_3

    .line 210
    :catch_2
    move-exception v6

    const/16 v8, 0x4d

    aput-boolean v10, v7, v8

    .line 211
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 212
    const/16 v6, 0x4e

    aput-boolean v10, v7, v6

    goto/16 :goto_3

    .line 206
    :catchall_0
    move-exception v6

    move-object v0, v5

    move-object v5, v6

    :goto_6
    if-nez v0, :cond_9

    const/16 v6, 0x4f

    aput-boolean v10, v7, v6

    .line 214
    :goto_7
    const/16 v6, 0x54

    aput-boolean v10, v7, v6

    throw v5

    .line 206
    :cond_9
    const/16 v6, 0x50

    const/4 v8, 0x1

    :try_start_6
    aput-boolean v8, v7, v6

    .line 208
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 212
    const/16 v6, 0x51

    aput-boolean v10, v7, v6

    goto :goto_7

    .line 210
    :catch_3
    move-exception v6

    const/16 v8, 0x52

    aput-boolean v10, v7, v8

    .line 211
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    const/16 v6, 0x53

    aput-boolean v10, v7, v6

    goto :goto_7

    .line 217
    :cond_a
    const/16 v6, 0x56

    const/4 v8, 0x1

    :try_start_7
    aput-boolean v8, v7, v6

    .line 219
    const-string v6, "notes"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_4

    move-result-object v2

    .line 223
    .restart local v2    # "notes":Lorg/json/JSONArray;
    const/16 v5, 0x57

    aput-boolean v10, v7, v5

    goto/16 :goto_4

    .line 221
    .end local v2    # "notes":Lorg/json/JSONArray;
    :catch_4
    move-exception v6

    const/16 v8, 0x58

    aput-boolean v10, v7, v8

    .line 222
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    const/16 v6, 0x59

    aput-boolean v10, v7, v6

    move-object v2, v5

    goto/16 :goto_4

    .line 206
    :catchall_1
    move-exception v5

    goto :goto_6

    .line 201
    :catch_5
    move-exception v6

    move-object v0, v5

    goto/16 :goto_2

    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    :catch_6
    move-exception v6

    goto/16 :goto_2

    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    :catch_7
    move-exception v6

    move-object v0, v5

    goto/16 :goto_2
.end method

.method static saveData(Ljava/io/File;Lorg/json/JSONArray;)Z
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x1

    invoke-static {}, Lcom/moonpi/swiftnotes/DataUtils;->$jacocoInit()[Z

    move-result-object v5

    .line 61
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    aput-boolean v8, v5, v8

    .line 63
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 66
    .local v1, "root":Lorg/json/JSONObject;
    if-eqz p1, :cond_0

    const/4 v4, 0x2

    const/4 v6, 0x1

    :try_start_0
    aput-boolean v6, v5, v4

    .line 68
    const-string v4, "notes"

    invoke-virtual {v1, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    invoke-static {}, Lcom/moonpi/swiftnotes/MainActivity;->getBackupPath()Ljava/io/File;

    move-result-object v4

    if-ne p0, v4, :cond_5

    const/4 v4, 0x6

    aput-boolean v8, v5, v4

    .line 82
    invoke-static {}, Lcom/moonpi/swiftnotes/DataUtils;->isExternalStorageReadable()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x7

    aput-boolean v8, v5, v4

    .line 100
    :goto_0
    const/16 v4, 0x11

    aput-boolean v8, v5, v4

    .line 147
    :goto_1
    return v3

    .line 70
    :catch_0
    move-exception v4

    const/4 v6, 0x3

    aput-boolean v8, v5, v6

    .line 71
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    .line 72
    const/4 v4, 0x4

    aput-boolean v8, v5, v4

    goto :goto_1

    .line 78
    :cond_0
    const/4 v4, 0x5

    aput-boolean v8, v5, v4

    goto :goto_1

    .line 82
    :cond_1
    invoke-static {}, Lcom/moonpi/swiftnotes/DataUtils;->isExternalStorageWritable()Z

    move-result v4

    if-nez v4, :cond_2

    const/16 v4, 0x8

    aput-boolean v8, v5, v4

    goto :goto_0

    :cond_2
    const/16 v4, 0x9

    aput-boolean v8, v5, v4

    .line 83
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v3, 0xa

    aput-boolean v8, v5, v3

    .line 119
    :goto_2
    const/4 v4, 0x0

    const/16 v3, 0x1a

    const/4 v6, 0x1

    :try_start_1
    aput-boolean v6, v5, v3

    .line 123
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, p0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v0, "bufferedWriter":Ljava/io/BufferedWriter;
    const/16 v3, 0x1b

    const/4 v4, 0x1

    :try_start_2
    aput-boolean v4, v5, v3

    .line 124
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const/16 v3, 0x1c

    const/4 v4, 0x1

    aput-boolean v4, v5, v3

    .line 127
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v2

    .line 136
    .local v2, "successful":Ljava/lang/Boolean;
    if-nez v0, :cond_9

    const/16 v3, 0x1d

    aput-boolean v8, v5, v3

    .line 147
    .end local v0    # "bufferedWriter":Ljava/io/BufferedWriter;
    :goto_3
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/16 v4, 0x32

    aput-boolean v8, v5, v4

    goto :goto_1

    .line 83
    .end local v2    # "successful":Ljava/lang/Boolean;
    :cond_3
    const/16 v4, 0xb

    const/4 v6, 0x1

    :try_start_3
    aput-boolean v6, v5, v4

    .line 85
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/16 v6, 0xc

    const/4 v7, 0x1

    aput-boolean v7, v5, v6

    .line 88
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v4

    if-nez v4, :cond_4

    .line 89
    const/16 v4, 0xd

    aput-boolean v8, v5, v4

    goto :goto_1

    .line 94
    :cond_4
    const/16 v3, 0xe

    aput-boolean v8, v5, v3

    goto :goto_2

    .line 91
    :catch_1
    move-exception v4

    const/16 v6, 0xf

    aput-boolean v8, v5, v6

    .line 92
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 93
    const/16 v4, 0x10

    aput-boolean v8, v5, v4

    goto/16 :goto_1

    .line 104
    :cond_5
    invoke-static {}, Lcom/moonpi/swiftnotes/MainActivity;->getLocalPath()Ljava/io/File;

    move-result-object v4

    if-eq p0, v4, :cond_6

    const/16 v3, 0x12

    aput-boolean v8, v5, v3

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v3, 0x13

    aput-boolean v8, v5, v3

    goto :goto_2

    :cond_7
    const/16 v4, 0x14

    const/4 v6, 0x1

    :try_start_4
    aput-boolean v6, v5, v4

    .line 106
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/16 v6, 0x15

    const/4 v7, 0x1

    aput-boolean v7, v5, v6

    .line 109
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move-result v4

    if-nez v4, :cond_8

    .line 110
    const/16 v4, 0x16

    aput-boolean v8, v5, v4

    goto/16 :goto_1

    .line 115
    :cond_8
    const/16 v3, 0x17

    aput-boolean v8, v5, v3

    goto/16 :goto_2

    .line 112
    :catch_2
    move-exception v4

    const/16 v6, 0x18

    aput-boolean v8, v5, v6

    .line 113
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 114
    const/16 v4, 0x19

    aput-boolean v8, v5, v4

    goto/16 :goto_1

    .line 136
    .restart local v0    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v2    # "successful":Ljava/lang/Boolean;
    :cond_9
    const/16 v3, 0x1e

    const/4 v4, 0x1

    :try_start_5
    aput-boolean v4, v5, v3

    .line 138
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    const/16 v3, 0x1f

    const/4 v4, 0x1

    aput-boolean v4, v5, v3

    .line 139
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 143
    const/16 v3, 0x20

    aput-boolean v8, v5, v3

    goto/16 :goto_3

    .line 141
    :catch_3
    move-exception v3

    const/16 v4, 0x21

    aput-boolean v8, v5, v4

    .line 142
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 143
    const/16 v3, 0x22

    aput-boolean v8, v5, v3

    goto/16 :goto_3

    .line 129
    .end local v0    # "bufferedWriter":Ljava/io/BufferedWriter;
    .end local v2    # "successful":Ljava/lang/Boolean;
    :catch_4
    move-exception v3

    move-object v0, v4

    :goto_4
    const/16 v4, 0x23

    const/4 v6, 0x1

    :try_start_6
    aput-boolean v6, v5, v4

    .line 131
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .restart local v2    # "successful":Ljava/lang/Boolean;
    const/16 v4, 0x24

    const/4 v6, 0x1

    aput-boolean v6, v5, v4

    .line 132
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 136
    if-nez v0, :cond_a

    const/16 v3, 0x25

    aput-boolean v8, v5, v3

    goto/16 :goto_3

    :cond_a
    const/16 v3, 0x26

    const/4 v4, 0x1

    :try_start_7
    aput-boolean v4, v5, v3

    .line 138
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    const/16 v3, 0x27

    const/4 v4, 0x1

    aput-boolean v4, v5, v3

    .line 139
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 143
    const/16 v3, 0x28

    aput-boolean v8, v5, v3

    goto/16 :goto_3

    .line 141
    :catch_5
    move-exception v3

    const/16 v4, 0x29

    aput-boolean v8, v5, v4

    .line 142
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 143
    const/16 v3, 0x2a

    aput-boolean v8, v5, v3

    goto/16 :goto_3

    .line 136
    .end local v2    # "successful":Ljava/lang/Boolean;
    :catchall_0
    move-exception v3

    move-object v0, v4

    :goto_5
    if-nez v0, :cond_b

    const/16 v4, 0x2b

    aput-boolean v8, v5, v4

    .line 145
    :goto_6
    const/16 v4, 0x31

    aput-boolean v8, v5, v4

    throw v3

    .line 136
    :cond_b
    const/16 v4, 0x2c

    const/4 v6, 0x1

    :try_start_8
    aput-boolean v6, v5, v4

    .line 138
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    const/16 v4, 0x2d

    const/4 v6, 0x1

    aput-boolean v6, v5, v4

    .line 139
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 143
    const/16 v4, 0x2e

    aput-boolean v8, v5, v4

    goto :goto_6

    .line 141
    :catch_6
    move-exception v4

    const/16 v6, 0x2f

    aput-boolean v8, v5, v6

    .line 142
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    const/16 v4, 0x30

    aput-boolean v8, v5, v4

    goto :goto_6

    .line 136
    :catchall_1
    move-exception v3

    goto :goto_5

    .line 129
    .restart local v0    # "bufferedWriter":Ljava/io/BufferedWriter;
    :catch_7
    move-exception v3

    goto :goto_4
.end method
