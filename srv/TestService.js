module.exports = (srv) => {
  srv.on("deleteData", async (req) => {
    await DELETE.from("Positions");
  });
};
