.class Lcom/android/settings_ex/applications/ManageAssist$2;
.super Ljava/lang/Object;
.source "ManageAssist.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic Kt:Lcom/android/settings_ex/applications/ManageAssist;

.field final synthetic Ku:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/ManageAssist;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/settings_ex/applications/ManageAssist$2;->Kt:Lcom/android/settings_ex/applications/ManageAssist;

    iput-object p2, p0, Lcom/android/settings_ex/applications/ManageAssist$2;->Ku:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageAssist$2;->Kt:Lcom/android/settings_ex/applications/ManageAssist;

    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageAssist$2;->Ku:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings_ex/applications/ManageAssist;->a(Lcom/android/settings_ex/applications/ManageAssist;Ljava/lang/String;)V

    .line 177
    return-void
.end method
