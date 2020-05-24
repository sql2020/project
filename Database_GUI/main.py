from tkinter import *
from TitlePage import *
from PostgreSql import *

root = Tk()
root.title("数据库GUI")
cursor = SqlInit()
photo = PhotoImage(file="F:/Database_GUI/1.gif")
TitlePage(root, photo, cursor)
root.mainloop()